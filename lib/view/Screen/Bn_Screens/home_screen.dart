import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:store/controller/cart_api_response.dart';
import 'package:store/controller/controller.dart';
import 'package:store/model/categories.dart';
import 'package:store/model/product.dart';
import 'package:store/view/Screen/Bn_Screens/test.dart';
import 'package:store/view/Screen/Product/product_detiles.dart';
import 'package:store/view/Screen/Product/product_search.dart';

import '../../../generated/l10n.dart';
import '../../../model/banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyController controller = Get.put(MyController());
  Products products = Products();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).select,
                  style: GoogleFonts.cormorant(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: SearchProducts());
                  },
                  icon: const Icon(
                    Icons.search_rounded,
                    size: 26,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FutureBuilder<List<CategoriesData>>(
                    future: MyController().fetchHomeCategories(),
                    builder: (context, snapshot) {
                      print('=================??????=${Test.product[55]}');

                      List<String> newList = [];
                      try {
                        for (int i = 0; i < snapshot.data!.length; i++) {
                          newList.add(snapshot.data![i].name!);
                        }
                      } catch (e) {
                        SnackBar(content: Text(e.toString()));
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasData &&
                          snapshot.data!.isNotEmpty) {
                        return CustomCheckBoxGroup(
                            height: 46,
                            // radius: ,
                            // horizontal: true,
                            enableShape: true,
                            customShape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: controller.isLight()
                                        ? const Color(0x5f586BCA)
                                        : const Color(0x5f019592),
                                    width: 1),
                                borderRadius: BorderRadius.circular(8)),
                            horizontal: false,
                            enableButtonWrap: false,
                            autoWidth: true,
                            buttonValuesList: newList,
                            buttonLables: newList,
                            checkBoxButtonValues: (value) {},
                            buttonTextStyle: ButtonTextStyle(
                                selectedColor: Colors.white,
                                unSelectedColor: controller.isLight()
                                    ? Colors.black
                                    : Colors.white),
                            selectedColor: controller.isLight()
                                ? const Color(0xff586BCA)
                                : const Color(0xff019592),
                            unSelectedColor: controller.isLight()
                                ? Colors.white
                                : const Color(0xff2a2a2a));
                      } else {
                        return const Text('No Data');
                      }
                    },
                  ),
                ],
              ),
            ),
            FutureBuilder<List<Banners>>(
                future: MyController().fetchHomeBanner(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                      ),
                      items: snapshot.data!
                          .map((item) => Container(
                              margin: const EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(item.image!,
                                    fit: BoxFit.cover, width: 1000),
                              )))
                          .toList(),
                    );
                  } else {
                    return const Text('NO Data');
                  }
                }),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).recent_added,
                    style: Theme.of(context).textTheme.headline1),
                Text(
                  S.of(context).view_all,
                  style: TextStyle(
                    color: controller.isLight()
                        ? const Color(0xff586BCA)
                        : const Color(0xff019592),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            FutureBuilder<List<Products>>(
              future: MyController().fetchHomeProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  return ListView.separated(
                    separatorBuilder: (BuildContext context, int i) =>
                        const SizedBox(
                      height: 12,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: controller.isLight()
                              ? const Color(0xffffffff)
                              : const Color(0xff262626),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetails(
                                        index: Test.product[
                                            snapshot.data![index].id]!)));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: ClipRRect(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    snapshot.data![index].image!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            snapshot.data![index].name!,
                                            maxLines: 1,
                                            softWrap: false,
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: controller.isLight()
                                                    ? const Color(0xff586BCA)
                                                    : const Color(0xff019592),
                                                fontSize:
                                                    18) /* Theme.of(context).textTheme.headline1*/,
                                          ),
                                        ),
                                        FavoriteButton(
                                          iconData: Icons.favorite,
                                          isFavorite:
                                              snapshot.data![index].inFavorites,
                                          valueChanged: (isFavorite) {
                                            controller.favorite(
                                                id: snapshot.data![index].id!);
                                          },
                                          iconSize: 40,
                                          iconDisabledColor: Colors.grey,
                                          iconColor:
                                              Theme.of(context).iconTheme.color,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '${snapshot.data![index].description}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      softWrap: false,
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '\$${snapshot.data![index].price!.toString()}',
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          '\$${snapshot.data![index].oldPrice!.toString()}',
                                          style: const TextStyle(
                                              color: Colors.red,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Text('No Data');
                }
              },
            )
          ],
        ),
      ),
    )));
  }

  Future<void> inCart(int id) async {
    CartApiResponse response = await MyController().cart(id: id);
    print('@@@@@@@@@22${response.message}');
  }
}
