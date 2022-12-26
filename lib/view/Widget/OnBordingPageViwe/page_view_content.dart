import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/controller/controller.dart';

class PageView_Content extends StatelessWidget {
   PageView_Content(
      {required this.img, required this.titel, this.subTitel = ""});

  final String img;
  final String titel;
  final String subTitel;
  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      physics: NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(
                controller.isLight()?'images/Onbording/LigthTheme/$img.png':'images/Onbording/DarkTheme/$img.png'


               ),
            height: 300,
            width: 400,
          ),
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47.5),
            child: Column(
              children: [
                Text(
                  titel,
                  textAlign: TextAlign.center,
                  // "",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(subTitel,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.adamina(
                      fontSize: 15,

                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
