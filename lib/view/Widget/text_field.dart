import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    Key? key,
    required this.hintTitel,
    required this.errorText,
    required this.isHide,
    this.prefixIcon,
    this.safixIcon,
    required this.textInputType,
    required this.controller,
  });

  final String? hintTitel;
  final String errorText;
  bool isHide;

  final Icon? prefixIcon;
  Widget? safixIcon;
  final TextInputType textInputType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      maxLines: 1,
      minLines: 1,
      style: GoogleFonts.poppins(height: 2),
      obscureText: isHide,
      decoration: InputDecoration(
        constraints: BoxConstraints(maxHeight: errorText == null ? 50 : 70),

        suffix: safixIcon,
//******************************************************************************************************
        hintText: hintTitel,
        // contentPadding: const EdgeInsetsDirectional.only(start: 10),
        hintMaxLines: 1,

        prefixIcon: prefixIcon,
        prefixIconColor: const Color(0xff1B2A3B),
        suffixIconColor: const Color(0xff1B2A3B),
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 1,
                color: Colors.blue.shade200,
                style: BorderStyle.solid)),
        // errorText: errorText,
        errorMaxLines: 1,

        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff586BCA),
              width: 1,
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red.shade800,
              width: 1,
            )),
      ),
    );
  }
}

// onPressed: onTap,
// style: ElevatedButton.styleFrom(
//     elevation: 5,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//         side: BorderSide(
//             width: 1,
//             color: existBorder == true
//                 ? const Color(0xff586BCA)
//                 : Colors.transparent))
//     ,
//     backgroundColor: colorBotton!,
//     minimumSize: Size(width!, height!)),
// child: Text(
//   titel!,
//   style:
//   GoogleFonts.poppins(fontSize: fontSize!, color: textColorBotton!),
// ));
