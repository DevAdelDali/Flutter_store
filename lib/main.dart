import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:store/controller/controller.dart';
import 'package:store/theme.dart';
import 'package:store/view/Screen/Bn_Screens/bottom_navigation_bar.dart';
import 'package:store/view/Screen/Bn_Screens/home_screen.dart';
import 'package:store/view/Screen/Bn_Screens/profile_screen.dart';
import 'package:store/view/Screen/Entry/forget_pass_screen.dart';
import 'package:store/view/Screen/Entry/login.dart';
import 'package:store/view/Screen/Entry/register.dart';
import 'package:store/view/Screen/Product/product_detiles.dart';
import 'package:store/view/Screen/Start/choose_entry_screen.dart';
import 'package:store/view/Screen/Start/luncher_app.dart';
import 'package:store/view/Screen/Start/out_bording_screen.dart';

void main() {
  runApp(const MyApp());
}
//****************************************************************************

//Adel
//khalidf
//Adel
//------------------------------------------------------------------khalid
//------------------------------------------------------------------khalid
//------------------------------------------------------------------khalid
//------------------------------------------------------------------khalid
Locale? locale;
final MyController mycontroler = Get.find();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/luncher_app": (context) => const Luncher_APP(),
        "/out_bording_screen": (context) => const Out_Bording(),
        "/choose_entry_screen": (context) => const ChooseEnteyScreen(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/forget_pass_screen": (context) => const ForgetScreen(),
        "/home_screen": (context) => const HomeScreen(),
        "/bottom_screen": (context) => const BottomScreen(),
        "/profile_screen": (context) => const ProfileScreen(),
        "/product_detiles": (context) => const ProductDetails(),
      },
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      title: 'Store',
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      initialRoute: "/product_detiles",
    );
  }
}
