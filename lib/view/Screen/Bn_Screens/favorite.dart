import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:store/controller/controller.dart';
import 'package:store/generated/l10n.dart';
import 'package:store/model/favorite.dart';
import 'package:store/view/Screen/Bn_Screens/test.dart';

import '../Product/product_detiles.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          S.of(context).favorite,
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, "/bottom_screen"),
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<Favorite>>(
        future: MyController().fetchFavroite(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView.separated(
              padding: const EdgeInsets.all(10),
              separatorBuilder: (BuildContext context, int i) => const SizedBox(
                height: 12,
              ),
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, int index) {
                return Slidable(
                  startActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    // dismissible: DismissiblePane(onDismissed: () {}),

                    children: [
                      SlidableAction(
                        autoClose: false,
                        flex: 1,
                        onPressed: (value) {
                          setState(() {
                            controller.favorite(
                                id: snapshot.data![index].product!.id!);
                          });
                        },
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Remove \nform cart',
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                                        snapshot.data![index].product!.id]!)));
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
                                snapshot.data![index].product!.image!,
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
                                        snapshot.data![index].product!.name!,
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
                                    /*  FavoriteButton(
                                      iconData: Icons.shopping_cart_outlined,
                                      isFavorite:
                                          snapshot.data![index].product!.inCart,
                                      valueChanged: (isFavorite) {
                                        setState(() {
                                          controller.cart(
                                              id: snapshot
                                                  .data![index].product!.id!);
                                        });
                                      },
                                      iconSize: 40,
                                      iconDisabledColor: Colors.grey,
                                      iconColor:
                                          Theme.of(context).iconTheme.color,
                                    )*/
                                  ],
                                ),
                                Text(
                                  'Discount  ${snapshot.data![index].product!.discount!.toString()}%',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$${snapshot.data![index].product!.price!.toString()}',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    Text(
                                      '\$${snapshot.data![index].product!.oldPrice!.toString()}',
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
                  ),
                );
              },
            );
          } else {
            return const Text('No Data');
          }
        },
      ),
    );
  }
}
