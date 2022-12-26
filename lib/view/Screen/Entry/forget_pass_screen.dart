import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/controller/controller.dart';
import 'package:store/view/Widget/botton_custom.dart';
import 'package:store/view/Widget/text_field.dart';

import '../../../generated/l10n.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  late TextEditingController _recavire_textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _recavire_textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _recavire_textEditingController.dispose();
    super.dispose();
  }

  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leadingWidth: double.minPositive,
          automaticallyImplyLeading: false,
          title: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: controller.isLight()
                        ? const Color(0xff586BCA)
                        : const Color(0xff019592),
                  ),
                ),
                Container(
                    height: 20,
                    width: 100,
                    child: Text(
                      "Back",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: controller.isLight()
                              ? const Color(0xff586BCA)
                              : const Color(0xff019592),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0),
        child: ListView(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              "Recover\nyour account",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
            SizedBox(
              height: 189,
            ),
            TextFieldCustom(
                hintTitel: S.of(context).enter_email,
                errorText: S.of(context).error,
                isHide: false,
                textInputType: TextInputType.text,
                controller: _recavire_textEditingController),
            SizedBox(
              height: 20,
            ),
            BottonCustom(
                titel: S.of(context).next,
                colorBotton: controller.isLight()
                    ? const Color(0xff586BCA)
                    : const Color(0xff019592),
                textColorBotton: Colors.white,
                fontSize: 14,
                height: 50,
                width: 285,
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
