import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/Widget/botton_custom.dart';

class ChooseEnteyScreen extends StatefulWidget {
  const ChooseEnteyScreen({Key? key}) : super(key: key);

  @override
  State<ChooseEnteyScreen> createState() => _ChooseEnteyScreenState();
}




class _ChooseEnteyScreenState extends State<ChooseEnteyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Simply",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "Select your photographer,\n then go to session!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 79,
            ),
            Image.asset(
              "images/Illustration.png",
              fit: BoxFit.contain,
              height: 289,
            ),
            const SizedBox(
              height: 98,
            ),
            Row(
              children: [

BottonCustom(fontSize: 14,titel: "Sign in", colorBotton: Color(0xff586BCA) , textColorBotton: Colors.white, height: 60, width: 170),

                SizedBox(width: 60),
                BottonCustom(fontSize: 14,titel: "Sign in", colorBotton: Color(0xff586BCA) , textColorBotton: Colors.white, height: 60, width: 170)

              ],
            )
          ],
        ),
      ),
    );
  }
}
