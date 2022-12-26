import 'dart:convert';
import 'dart:ui';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:store/controller/api_response.dart';
import 'package:store/controller/cart_api_response.dart';
import 'package:store/model/cart.dart';
import 'package:store/model/categories.dart';
import 'package:store/model/favorite.dart';
import 'package:store/model/user.dart';
import 'package:store/shared_preferences.dart';
import '../model/banner.dart';
import '../model/product.dart';
import 'favorite_api_response.dart';

class MyController extends GetxController {
  bool isSelect = true;

  Future<List<Banners>> fetchHomeBanner() async {
    try {
      const String url = 'https://student.valuxapps.com/api/home';
      http.Response res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        var responsObjects = responseJson['data']['banners'] as List;
        return responsObjects.map((e) => Banners.fromJson(e)).toList();
      }
    } catch (e) {
      Get.snackbar('Error!', e.toString());
    }
    return [];
  }

  Future<List<Products>> fetchHomeProducts() async {
    try {
      String token =
          MySharedPreferences().getValueFor<String>(key: Shared.token.name) ??
              '';

      const String url = 'https://student.valuxapps.com/api/products';
      http.Response res = await http.get(Uri.parse(url), headers: {
        'lang': Platform.localeName == 'en_US' ? 'en' : 'ar',
        HttpHeaders.authorizationHeader: token
      });
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        var responsObjects = responseJson['data']['data'] as List;
        return responsObjects.map((e) => Products.fromJson(e)).toList();
      }
    } catch (e) {
      Get.snackbar('Error!', e.toString());
    }
    return [];
  }

  Future<List<Products>> fetchListProducts({String? query}) async {
    try {
      const String url = 'https://student.valuxapps.com/api/home';
      http.Response res = await http.get(Uri.parse(url),
          headers: {'lang': Platform.localeName == 'en_US' ? 'en' : 'ar'});
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        var responsObjects = responseJson['data']['products'] as List;
        var result = responsObjects.map((e) => Products.fromJson(e)).toList();
        if (query != null) {
          return result
              .where((element) =>
                  element.name!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      }
    } catch (e) {
      Get.snackbar('Error!', e.toString());
    }
    return [];
  }

  Future<List<CategoriesData>> fetchHomeCategories() async {
    try {
      const String url = 'https://student.valuxapps.com/api/categories';
      http.Response res = await http.get(Uri.parse(url),
          headers: {'lang': Platform.localeName == 'en_US' ? 'en' : 'ar'});
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        var responsObjects = responseJson['data']['data'] as List;
        return responsObjects.map((e) => CategoriesData.fromJson(e)).toList();
      }
    } catch (e) {
      Get.snackbar('Error!', e.toString());
    }
    return [];
  }

  Future<UserApiResponse> login(
      {required String email, required String password}) async {
    const String url = 'https://student.valuxapps.com/api/login';
    http.Response res = await http
        .post(Uri.parse(url), body: {'email': email, 'password': password});

    var responseJson = jsonDecode(res.body);
    if (res.statusCode == 200) {
      User user = User.fromJson(responseJson['data']);
      MySharedPreferences().saveLogin(user);
      return UserApiResponse(responseJson['message'], responseJson['status']);
    }
    return UserApiResponse('Error ', false);
  }

  Future<UserApiResponse> register(User user) async {
    const String url = 'https://student.valuxapps.com/api/register';
    http.Response res = await http.post(Uri.parse(url), body: {
      'name': user.name,
      'email': user.email,
      'password': user.password,
      'phone': user.phone
    });

    var responseJson = jsonDecode(res.body);
    if (res.statusCode == 200) {
      return UserApiResponse(responseJson['message'], responseJson['status']);
    }
    return UserApiResponse('Error ', false);
  }

  Future<UserApiResponse> logout() async {
    String token =
        MySharedPreferences().getValueFor<String>(key: Shared.token.name) ?? '';
    print(token);
    const String url = 'https://student.valuxapps.com/api/logout';
    http.Response res = await http.post(Uri.parse(url), headers: {
      HttpHeaders.authorizationHeader: token
      // HttpHeaders.contentTypeHeader: 'application/json'
    });
    if (res.statusCode == 200 || res.statusCode == 401) {
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        return UserApiResponse(responseJson['message'], responseJson['status']);
      }
      return UserApiResponse('Error!', true);
    }
    return UserApiResponse('Error ', false);
  }

  Future<CartApiResponse> cart({required int id}) async {
    String token =
        MySharedPreferences().getValueFor<String>(key: Shared.token.name) ?? '';
    const String url = 'https://student.valuxapps.com/api/carts';
    http.Response res = await http.post(Uri.parse(url),
        body: {'product_id': '$id'},
        headers: {HttpHeaders.authorizationHeader: token});

    var responseJson = jsonDecode(res.body);
    print('============${responseJson['data']}');
    print('____________$token');
    if (res.statusCode == 200) {
      // Cart cart = Cart.fromJson(responseJson['data']);

      return CartApiResponse(responseJson['message'], responseJson['status']);
    }
    return CartApiResponse('Error ', false);
  }

  Future<List<Cart>> fetchCarts() async {
    try {
      String token =
          MySharedPreferences().getValueFor<String>(key: Shared.token.name) ??
              '';
      const String url = 'https://student.valuxapps.com/api/carts';
      http.Response res = await http.get(Uri.parse(url), headers: {
        'lang': Platform.localeName == 'en_US' ? 'en' : 'ar',
        HttpHeaders.authorizationHeader: token
      });
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        var responsObjects = responseJson['data']['cart_items'] as List;

        return responsObjects.map((e) => Cart.fromJson(e)).toList();
      }
    } catch (e) {
      Get.snackbar('Error!', e.toString());
    }
    return [];
  }

  Future<FavoriteApiResponse> favorite({required int id}) async {
    String token =
        MySharedPreferences().getValueFor<String>(key: Shared.token.name) ?? '';
    const String url = 'https://student.valuxapps.com/api/favorites';
    http.Response res = await http.post(Uri.parse(url),
        body: {'product_id': '$id'},
        headers: {HttpHeaders.authorizationHeader: token});

    var responseJson = jsonDecode(res.body);
    if (res.statusCode == 200) {
      // Cart cart = Cart.fromJson(responseJson['data']);

      return FavoriteApiResponse(responseJson['message'], responseJson['status']);
    }
    return FavoriteApiResponse('Error ', false);
  }
  Future<List<Favorite>> fetchFavroite() async {
    try {
      String token =
          MySharedPreferences().getValueFor<String>(key: Shared.token.name) ??
              '';
      const String url = 'https://student.valuxapps.com/api/favorites';
      http.Response res = await http.get(Uri.parse(url), headers: {
        'lang': Platform.localeName == 'en_US' ? 'en' : 'ar',
        HttpHeaders.authorizationHeader: token
      });
      if (res.statusCode == 200) {
        var responseJson = jsonDecode(res.body);
        var responsObjects = responseJson['data']['data'] as List;

        return responsObjects.map((e) => Favorite.fromJson(e)).toList();
      }
    } catch (e) {
      Get.snackbar('Error!', e.toString());
    }
    return [];
  }


  bool isLight() {
    return SchedulerBinding.instance.window.platformBrightness ==
        Brightness.light;
  }
}
