import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottonCustom extends StatelessWidget {
  final String titel;
  final Color colorBotton;
  final Color textColorBotton;

  final double fontSize;
  final double height;
  final double width;

  BottonCustom(
      {required this.titel,
      required this.colorBotton,
      required this.textColorBotton,
      required this.fontSize,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: colorBotton!, maximumSize: Size(width!, height!)),
        child: Text(
          titel!,
          style:
              GoogleFonts.poppins(fontSize: fontSize!, color: textColorBotton!),
        ));
  }
}
