import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select from categories',
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
                      enableShape: true,
                      customShape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0x5f586BCA), width: 1),
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
                      selectedColor: const Color(0xff586BCA),
                      unSelectedColor: Colors.white),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
              ),
              items: images
                  .map((item) => Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(item, fit: BoxFit.cover, width: 1000)))
                  .toList(),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recent Added',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Color(0xff586BCA)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 13,
                ),
                // shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                       const  ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image(
                            image: AssetImage('images/offers3.jpg'),
                            height: 119,
                            width: 119,
                            fit: BoxFit.cover,
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
                                  Text('Bracelets',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xff586BCA))),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                    ),
                                  )
                                ],
                              ),
                              Text('Blue Steel Watch',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'USD240',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff8FA1B4)),
                                  ),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    'USD365',
                                    style: GoogleFonts.poppins(
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
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
