import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:store/controller/controller.dart';
import 'package:store/theme.dart';
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
//------------------------------------------------------------------
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
      initialRoute: "/luncher_app",
    );
  }
}

