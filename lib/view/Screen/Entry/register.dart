import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/Widget/botton_custom.dart';
import 'package:store/view/Widget/text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPass = true;

  late TextEditingController _register_emailControler;
  late TextEditingController _register_passwordControler;
  late TextEditingController _register_mobileControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _register_emailControler = TextEditingController();
    _register_passwordControler = TextEditingController();
    _register_mobileControler = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _register_emailControler.dispose();
    _register_passwordControler.dispose();
    _register_mobileControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const    SizedBox(
              height: 80,
            ),
            Image.asset(
              "images/Logo-1.png",
              height: 120,
              width: 120,
            ),
            const  SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: Column(
                children: [
                  TextFieldCustom(
                      hintTitel: "Email",
                      errorText: "Enter your Email",
                      isHide: true,
                      prefixIcon: const Icon(Icons.email, color: Colors.grey),
                      textInputType: TextInputType.emailAddress,
                      controller: _register_emailControler,
                      safixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      )),
                  const  SizedBox(
                    height: 20,
                  ),
                  TextFieldCustom(
                      hintTitel: "Mobile",
                      errorText: "Enter your Mobile",
                      isHide: true,
                      prefixIcon: const Icon(Icons.phone, color: Colors.grey),
                      textInputType: TextInputType.emailAddress,
                      controller: _register_emailControler,
                      safixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      )),
                  const  SizedBox(
                    height: 20,
                  ),
                  TextFieldCustom(
                      hintTitel: "Password",
                      errorText: "Enter your Password",
                      isHide: _showPass,
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      textInputType: TextInputType.visiblePassword,
                      controller: _register_passwordControler,
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

            const  SizedBox(
              height: 40,
            ),
            BottonCustom(
                titel: "Sign Up",
                colorBotton: const Color(0xff586BCA),
                textColorBotton: Colors.white,
                fontSize: 14,
                height: 50,
                width: 285,
                onTap: () {}),
            const  SizedBox(
              height: 100,
            ),
            TextButton(
                onPressed: () {

                  Navigator.pushReplacementNamed(context, "/login");
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  "Already have account?",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      backgroundColor: Colors.transparent,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff586BCA)),
                )),
          ],
        ),
      ),
    );
  }
}
