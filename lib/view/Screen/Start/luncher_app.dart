import 'package:flutter/material.dart';


// ignore: camel_case_types
class Luncher_APP extends StatefulWidget {
  const Luncher_APP({Key? key}) : super(key: key);

  @override
  State<Luncher_APP> createState() => _Luncher_APPState();
}

class _Luncher_APPState extends State<Luncher_APP> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, "/out_bording_screen");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
            child:  Image(
              fit: BoxFit.cover,
          image: AssetImage("images/Logo.png"),
          width: 180,
          height: 180,
        )

      ),
    );
  }
}
