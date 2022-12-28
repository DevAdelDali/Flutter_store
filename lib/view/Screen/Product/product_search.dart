import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/controller.dart';
import 'package:store/model/product.dart';
import 'package:store/view/Screen/Product/product_detiles.dart';

class SearchProducts extends SearchDelegate {
  MyController controller = Get.put(MyController());

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<List<Products>>(
      future: MyController().fetchListProducts(query: query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return ListView.separated(
            separatorBuilder: (BuildContext context, int i) => const SizedBox(
              height: 12,
            ),
            shrinkWrap: true,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, int index) {
              return Container(
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
                            builder: (context) =>
                                ProductDetails(index: index)));
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ],
                            ),
                            Text(
                              'Discount  ${snapshot.data![index].discount!.toString()}%',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$${snapshot.data![index].price!.toString()}',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                Text(
                                  '\$${snapshot.data![index].oldPrice!.toString()}',
                                  style: const TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.lineThrough),
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
          return const Center(
              child: Text(
            'No Data 💔',
            style: TextStyle(fontSize: 40),
          ));
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(child: Text('no data'));
  }
}
