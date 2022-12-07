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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 45),
                BottonCustom(
                  onTap:  ()  => Navigator.pushReplacementNamed(context, "/login"),
                    fontSize: 14,
                    titel: "Sign in",
                    colorBotton: Color(0xff586BCA),
                    textColorBotton: Colors.white,
                    height: 60,
                    width: 135),
                // SizedBox(width: 20),
                 BottonCustom(
                   onTap: () => Navigator.pushReplacementNamed(context, "/register") ,
                    fontSize: 14,
                    titel: "Sign up",
                    colorBotton: Colors.white,
                    textColorBotton: Color(0xff586BCA),
                    height: 60,
                    width: 135,existBorder: true,
                 ),
                SizedBox(width: 45),
              ],
            )
          ],
        ),
      ),
    );
  }


}
