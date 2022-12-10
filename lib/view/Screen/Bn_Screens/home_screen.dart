import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List<String> images = [
  'images/black_friday.jpg',
  'images/offers.jpg',
  'images/offers3.jpg',
];

class _HomeScreenState extends State<HomeScreen> {
  bool color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).select,
                    style: GoogleFonts.cormorant(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.search_rounded,
                    size: 26,
                  ),
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
                    CustomCheckBoxGroup(
                        height: 46,
                        // radius: ,
                        // horizontal: true,
                        enableShape: true,
                        customShape: RoundedRectangleBorder(
                            side: BorderSide(
                                color:
                                    Provider.of<MyProvider>(context).isLight()
                                        ? const Color(0x5f586BCA)
                                        : const Color(0x5f019592),
                                width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        horizontal: false,
                        enableButtonWrap: false,
                        autoWidth: true,
                        buttonValuesList: const [
                          //بيانات افتراضية
                          'khalid',
                          'adel',
                          'mohammed',
                          'alid',
                          'said'
                        ],
                        buttonLables: const [
                          //بيانات افتراضية
                          'khalid',
                          'adel',
                          'mohammed',
                          'alid',
                          'said'
                        ],
                        checkBoxButtonValues: (value) {},
                        buttonTextStyle: ButtonTextStyle(
                            selectedColor: Colors.white,
                            unSelectedColor:
                                Provider.of<MyProvider>(context).isLight()
                                    ? Colors.black
                                    : Colors.white),
                        selectedColor:
                            Provider.of<MyProvider>(context).isLight()
                                ? const Color(0xff586BCA)
                                : const Color(0xff019592),
                        unSelectedColor:
                            Provider.of<MyProvider>(context).isLight()
                                ? Colors.white
                                : const Color(0xff2a2a2a)),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                ),
                items: images
                    .map((item) => Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: const EdgeInsets.all(5),
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000)))
                    .toList(),
              ),
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
                      color: Provider.of<MyProvider>(context).isLight()
                          ? const Color(0xff586BCA)
                          : const Color(0xff019592),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 12,
                  ),
                  // shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Provider.of<MyProvider>(context).isLight()
                            ? const Color(0xffffffff)
                            : const Color(0xff262626),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 120,
                              width: 120,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image(
                                  image: AssetImage('images/offers3.jpg'),
                                  fit: BoxFit.cover,
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
                                      Text(
                                        'Bracelets',
                                        style: TextStyle(
                                            color: ThemeMode == ThemeMode.light
                                                ? const Color(0xff586BCA)
                                                : const Color(0xff019592),
                                            fontSize:
                                                18) /* Theme.of(context).textTheme.headline1*/,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                        color: const Color(0xff586BCA),
                                        // color: const Color(0xff586BCA),
                                        // color: Theme.of(context).iconTheme.color,
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Blue Steel Watch',
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'USD240',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Text(
                                        'USD365',
                                        style: TextStyle(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
