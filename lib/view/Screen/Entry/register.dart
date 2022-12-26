import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/controller/api_response.dart';
import 'package:store/controller/controller.dart';
import 'package:store/model/user.dart';
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
  late TextEditingController _register_nameControler;
  late TextEditingController _register_passwordControler;
  late TextEditingController _register_mobileControler;
  MyController controller = Get.put(MyController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _register_emailControler = TextEditingController();
    _register_passwordControler = TextEditingController();
    _register_nameControler = TextEditingController();
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
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              controller.isLight()
                  ? 'images/Luncher/Ligth/Logo.png'
                  : 'images/Luncher/Dark/Logo.png',
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
                      hintTitel: S.of(context).name,
                      errorText: S.of(context).enter_your_mobile,
                      isHide: false,
                      prefixIcon: const Icon(Icons.person, color: Colors.grey),
                      textInputType: TextInputType.text,
                      controller: _register_nameControler,
                      safixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldCustom(
                      hintTitel: S.of(context).email,
                      errorText: S.of(context).enter_your_email,
                      isHide: false,
                      prefixIcon: const Icon(Icons.email, color: Colors.grey),
                      textInputType: TextInputType.emailAddress,
                      controller: _register_emailControler,

                      safixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldCustom(
                      hintTitel: S.of(context).mobile,
                      errorText: S.of(context).enter_your_mobile,
                      isHide: false,
                      prefixIcon: const Icon(Icons.phone, color: Colors.grey),
                      textInputType: TextInputType.number,
                      controller: _register_mobileControler,
                      safixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldCustom(
                      hintTitel: S.of(context).password,
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
            const SizedBox(
              height: 20,
            ),
            BottonCustom(
                titel: S.of(context).sign_up,
                colorBotton: controller.isLight()
                    ? const Color(0xff586BCA)
                    : const Color(0xff019592),
                textColorBotton: Colors.white,
                fontSize: 14,
                height: 50,
                width: 285,
                onTap: () async => await _performLogin()),
            const SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () async => await _performLogin(),
                style: ButtonStyle(
                  // padding: ,
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
                    color: controller.isLight()
                        ? const Color(0xff586BCA)
                        : const Color(0xff019592),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Future<void> _performLogin() async {
    if (_chckData()) {
      await _register();
    }
  }

  bool _chckData() {
    if (_register_emailControler.text.isNotEmpty &&
        _register_mobileControler.text.isNotEmpty &&
        _register_passwordControler.text.isNotEmpty &&
        _register_nameControler.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> _register() async {
    UserApiResponse apiResponse = await MyController().register(user);
    print('!!!!!!!!!!!!!!!!!!!!!1${apiResponse.message}');
    if (apiResponse.success) {
      Navigator.pushReplacementNamed(context, '/login');
    }
    SnackBar(content: Text('${apiResponse.message}'));
  }

  User get user {
    User user = User();
    user.name = _register_nameControler.text;
    user.email = _register_emailControler.text;
    user.password = _register_passwordControler.text;
    user.phone = _register_mobileControler.text;
    return user;
  }
}
