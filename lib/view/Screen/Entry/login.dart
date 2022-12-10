import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/Widget/botton_custom.dart';
import 'package:store/view/Widget/text_field.dart';

import '../../../generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = true;

  late TextEditingController _login_emailControler;
  late TextEditingController _login_passwordControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _login_emailControler = TextEditingController();
    _login_passwordControler = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _login_emailControler.dispose();
    _login_passwordControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100.5,
            ),
            Image.asset(
              "images/Logo-1.png",
              height: 120,
              width: 120,
            ),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Column(
                children: [
                  TextFieldCustom(
                      hintTitel: S.of(context).email,
                      errorText:  S.of(context).enter_your_email,
                      isHide: false,
                      prefixIcon: const Icon(Icons.email, color: Colors.grey),
                      textInputType: TextInputType.emailAddress,
                      controller: _login_emailControler,
                      safixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldCustom(
                      hintTitel:  S.of(context).password,
                      errorText: S.of(context).enter_your_password,
                      isHide: _showPass,
                      prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                      textInputType: TextInputType.visiblePassword,
                      controller: _login_passwordControler,
                      safixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _showPass = !_showPass;
                            });
                          },
                          icon: Icon(
                            _showPass
                                ? Icons.remove_red_eye
                                : Icons.visibility_off,
                            color: const Color(0xff707070),
                          )))
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/forget_pass_screen");
                  },
                  child: Text(
                    S.of(context).forgot_password,
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff586BCA)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            BottonCustom(
                titel:  S.of(context).sign_in,
                colorBotton: const Color(0xff586BCA),
                textColorBotton: Colors.white,
                fontSize: 14,
                height: 50,
                width: 285,
                onTap: () {}),
            const SizedBox(
              height: 140,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/register");
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  S.of(context).create_an_account,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff586BCA)),
                ))
          ],
        ),
      ),
    );
  }
}
