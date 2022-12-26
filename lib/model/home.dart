/*
import 'package:store/model/banner.dart';
import 'package:store/model/product.dart';

class HomeData {
   bool? status;
   String? message;
   Data? data;

  HomeData({ this.status,  this.message,  this.data});

  HomeData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
   List<Banners>? banners;
   List<Products>? products;
   String? ad;

  Data({ this.banners,  this.products,  this.ad});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      if (json['banners'] != null) {
        banners = <Banners>[];
        json['banners'].forEach((v) {
          banners!.add(Banners.fromJson(v));
        });
      }
      if (json['products'] != null) {
        products = <Products>[];
        json['products'].forEach((v) {
          products!.add(Products.fromJson(v));
        });
      }
    }
    ad = json['ad'];
  }
}
*/
