import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:store/provider.dart';
import 'package:store/view/Widget/botton_custom.dart';
import 'package:store/view/Widget/text_field.dart';

import '../../../generated/l10n.dart';

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
              Provider.of<MyProvider>(context).isLight()?'images/Luncher/Ligth/Logo.png':'images/Luncher/Dark/Logo.png'

            ,  height: 120,
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
                      hintTitel:  S.of(context).email,
                      errorText:  S.of(context).enter_your_email,
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
                      hintTitel:  S.of(context).mobile,
                      errorText:  S.of(context).enter_your_mobile,
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
                      hintTitel:  S.of(context).password,
                      errorText: S.of(context).enter_your_password,
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
                titel:  S.of(context).sign_up,
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
                  S.of(context).already_have_account,
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
