import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCustom extends StatelessWidget {

  TextFieldCustom({
    Key? key,
    required this.hintTitel,
    required this.errorText,
    required this.isShow ,
    required this.prefixIcon,
    this.safixIcon ,
    required this.textInputType,
    required this.controller,

  });

  final String? hintTitel;
  final String errorText;
  bool  isShow ;
  final Icon prefixIcon;
  IconButton? safixIcon;
  final TextInputType textInputType;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      maxLines:  1,
      minLines:   1,


      obscuringCharacter: ".",
      obscureText: isShow,

      decoration: InputDecoration(

        constraints: BoxConstraints(maxHeight: errorText == null ? 50 : 70),
        hoverColor: Colors.green,

        // */

        suffixIcon: safixIcon,
//******************************************************************************************************
        hintText: hintTitel,
        contentPadding: EdgeInsetsDirectional.only(start: 10),
        hintMaxLines: 1,
        prefixIcon: prefixIcon,
        prefixIconColor: Color(0xff1B2A3B),
        suffixIconColor: Color(0xff1B2A3B) ,
        focusColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 1, color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 1,
                color: Colors.blue.shade200,
                style: BorderStyle.solid)),
        errorText: errorText,
        errorMaxLines: 1,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red.shade300,
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
