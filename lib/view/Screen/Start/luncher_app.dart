import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/provider.dart';


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
    return  Scaffold(
      body:  Center(
            child:  Image(
              fit: BoxFit.cover,
          image: AssetImage(Provider.of<MyProvider>(context).isLight()?'images/Luncher/Ligth/Logo.png':'images/Luncher/Dark/Logo.png'),
          width: 180,
          height: 180,
        )

      ),
    );
  }
}
