import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//
// class AppBarCustom extends StatelessWidget {
//   final Icon ? actionIcon;
//   // final Icon ? prefixIcon;
//   AppBarCustom({required this.actionIcon});
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//         elevation: 0,
//         leadingWidth: double.minPositive,
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 IconButton(
//                   onPressed: () =>
//                       Navigator.pushReplacementNamed(context, "/bottom_screen"),
//                   icon: Icon(Icons.arrow_back_ios, color: Color(0xff586BCA)),
//                 ),
//                 GestureDetector(
//                   onTap: () =>
//                       Navigator.pushReplacementNamed(context, "/bottom_screen"),
//                   child: Container(
//                       height: 20,
//                       width: 100,
//                       child: Text(
//                         "Back",
//                         style: GoogleFonts.poppins(
//                             fontSize: 16,
//                             color: Color(0xff586BCA),
//                             fontWeight: FontWeight.bold),
//                       )),
//                 )
//               ],
//             ),
//             IconButton(
//               onPressed: () {
//                 // Navigator.pushReplacementNamed(context, "/home_screen");
//               },
//               icon:  actionIcon!,
//             ),
//           ],
//         ));
//   }
// }
// /*Icon(Icons.edit, color: Color(0xff586BCA))*/