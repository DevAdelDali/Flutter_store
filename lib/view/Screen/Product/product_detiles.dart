import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/controller/controller.dart';
import 'package:store/generated/l10n.dart';
import 'package:store/model/product.dart';
import 'package:store/view/Widget/botton_custom.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  MyController controller = Get.put(MyController());

  // Color _colorfav_Activ = Colors.redAccent;
  // Color _colorfav_NoActiv = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Products>>(
        future: MyController().fetchHomeProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return Scaffold(
                appBar: AppBar(
                    elevation: 0,
                    toolbarHeight: 60.0,
                    excludeHeaderSemantics: true,
                    leadingWidth: double.minPositive,
                    automaticallyImplyLeading: false,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => Navigator.pushReplacementNamed(
                                  context, "/bottom_screen"),
                              icon: const Icon(
                                Icons.arrow_back_ios,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pushReplacementNamed(
                                  context, "/bottom_screen"),
                              child: SizedBox(
                                  height: 20,
                                  width: 100,
                                  child: Text(
                                    S.of(context).back,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: controller.isLight()
                                            ? const Color(0xff586BCA)
                                            : const Color(0xff019592),
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        ),
                        FavoriteButton(
                          iconData: Icons.favorite,
                          isFavorite: snapshot.data![widget.index].inFavorites,
                          valueChanged: (isFavorite) {
                            controller.favorite(
                                id: snapshot.data![widget.index].id!);
                          },
                          iconSize: 40,
                          iconDisabledColor: Colors.grey,
                          iconColor: Theme.of(context).iconTheme.color,
                        )
                      ],
                    )),
                body: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                        ),
                        items: snapshot.data![widget.index].images!
                            .map((item) => Container(
                                margin: const EdgeInsets.all(5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(item,
                                      fit: BoxFit.cover, width: 1000),
                                )))
                            .toList(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 6,
                            child: Text(
                              snapshot.data![widget.index].name!,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Flexible(
                              flex: 3,
                              child: Column(
                                children: [
                                  Text(
                                    '\$ ${snapshot.data![widget.index].price}',
                                    style: GoogleFonts.poppins(
                                      color: controller.isLight()
                                          ? const Color(0xff586BCA)
                                          : const Color(0xff019592),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '\$ ${snapshot.data![widget.index].discount}',
                                    style: GoogleFonts.poppins(
                                      color: Colors.red,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 0.5,
                        height: 2,
                        color: Colors.grey,
                        endIndent: 30,
                        indent: 30,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Text(
                                snapshot.data![widget.index].description!,
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      snapshot.data![widget.index].inCart!
                          ? BottonCustom(
                              titel: S.of(context).delete_from_cart,
                              colorBotton: controller.isLight()
                                  ? const Color(0xff586BCA)
                                  : const Color(0xff019592),
                              textColorBotton: Colors.white,
                              fontSize: 15,
                              height: 50,
                              width: 285,
                              onTap: () {
                                setState(() {
                                  controller.cart(
                                      id: snapshot.data![widget.index].id!);
                                });
                              },
                            )
                          : BottonCustom(
                              titel: S.of(context).add_to_cart,
                              colorBotton: controller.isLight()
                                  ? const Color(0xff586BCA)
                                  : const Color(0xff019592),
                              textColorBotton: Colors.white,
                              fontSize: 15,
                              height: 50,
                              width: 285,
                              onTap: () {
                                setState(() {
                                  controller.cart(
                                      id: snapshot.data![widget.index].id!);
                                });
                              },
                            ),
                    ],
                  ),
                ));
          } else {
            return const Text('No Data');
          }
        });
  }
}
