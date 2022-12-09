import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    /* appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,

      ),
    ),*/
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color(0xff586BCA), unselectedItemColor: Colors.grey),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.red,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.red),
          backgroundColor: MaterialStateProperty.all(Colors.red),
          foregroundColor: MaterialStateProperty.all(Colors.red)),
    ),
    bannerTheme: MaterialBannerThemeData(backgroundColor: Colors.red),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      // primaryVariant: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.teal,
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff586BCA),
    ),
    textTheme: const TextTheme(

        /* title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),*/
        ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.green,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      // primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
        /*title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),*/
        ),
  );
}
