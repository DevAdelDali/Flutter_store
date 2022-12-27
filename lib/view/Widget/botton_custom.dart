import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottonCustom extends StatelessWidget {
  final String titel;
  final Color colorBotton;
  final Color textColorBotton;

  final double fontSize;
  final double height;
  final double width;
  final bool existBorder;
  final Function() onTap;

  const BottonCustom(
      {required this.titel,
      required this.colorBotton,
      required this.textColorBotton,
      required this.fontSize,
      required this.height,
      required this.width,
      required this.onTap,
      this.existBorder = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(width: 1, color: Colors.transparent)),
            backgroundColor: colorBotton,
            minimumSize: Size(width, height)),
        child: Text(
          titel,
          style: GoogleFonts.poppins(
              fontSize: fontSize,
              color: textColorBotton,
              fontWeight: FontWeight.bold),
        ));
  }
}
