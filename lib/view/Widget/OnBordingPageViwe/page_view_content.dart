import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageView_Content extends StatelessWidget {
  const PageView_Content(
      {required this.img, required this.titel, this.subTitel = ""});

  final String img;
  final String titel;
  final String subTitel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image(
          image: AssetImage("images/Onbording/$img.png"),
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
                    color: const Color(0xff080808)),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(subTitel,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.adamina(
                    fontSize: 15,
                    color: const Color(0xff8D8D8D),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
