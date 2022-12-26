import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/controller.dart';
import 'package:store/shared_preferences.dart';

class Luncher_APP extends StatefulWidget {
  const Luncher_APP({Key? key}) : super(key: key);

  @override
  State<Luncher_APP> createState() => _Luncher_APPState();
}

class _Luncher_APPState extends State<Luncher_APP> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        bool loggedIn = MySharedPreferences()
                .getValueFor<bool>(key: Shared.loggedIn.name) ??
            false;

        String route = loggedIn ? '/bottom_screen' : '/out_bording_screen';
        Navigator.pushReplacementNamed(context, route);
      },
    );
  }

  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        fit: BoxFit.cover,
        image: AssetImage(controller.isLight()
            ? 'images/Luncher/Ligth/Logo.png'
            : 'images/Luncher/Dark/Logo.png'),
        width: 180,
        height: 180,
      )),
    );
  }
}
