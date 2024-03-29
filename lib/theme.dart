import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Color(0xff586BCA)),
    brightness: Brightness.light,
    listTileTheme: const ListTileThemeData(iconColor: Color(0xff586BCA)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xff586BCA),
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(),
        color: Color(0xfff8f8f8),
        iconTheme: IconThemeData(
          color: Color(0xff586BCA),
          opacity: 1.0,
          size: 24.0,
        )),
    primaryColor: const Color(0xff586BCA),
    canvasColor: const Color(0xff303030),
    scaffoldBackgroundColor: const Color(0xfff7f7fe),
    bottomAppBarColor: const Color(0xffffffff),
    toggleableActiveColor: const Color(0xff586BCA),
    secondaryHeaderColor: const Color(0xff616161),
    backgroundColor: const Color(0xff616161),
    dialogBackgroundColor: const Color(0xff424242),
    indicatorColor: const Color(0xff586BCA),
    hintColor: const Color(0x80ffffff),
    errorColor: const Color(0xffd32f2f),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88.0,
      height: 36.0,
      padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xffffffff),
          width: 0.0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xff586BCA),
      disabledColor: Color(0x4dffffff),
      highlightColor: Color(0x29ffffff),
      splashColor: Color(0x1fffffff),
      colorScheme: ColorScheme(
        primary: Color(0xff586BCA),
        secondary: Color(0xff586BCA),
        surface: Color(0xff424242),
        background: Color(0xff616161),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xff000000),
        onSecondary: Color(0xffffffff),
        onSurface: Color(0xff000000),
        onBackground: Color(0xff000000),
        onError: Color(0xff000000),
        brightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      headline4: TextStyle(
        color: Color(0xb3000000),
        fontSize: 96.0,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Color(0xb3000000),
        fontSize: 60.0,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color(0xb3000000),
        fontSize: 48.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline1: TextStyle(
        color: Color(0xb3000000),
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        color: Color(0xb3000000),
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: Color(0xff000000),
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: Color(0xff000000),
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xff000000),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      helperStyle: TextStyle(
        color: Color(0xff000000),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      hintStyle: TextStyle(
        color: Color(0xff000000),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorStyle: TextStyle(
        color: Color(0xfff70000),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding:
          EdgeInsets.only(top: 12.0, bottom: 12.0, left: 0.0, right: 0.0),
      isCollapsed: false,
      prefixStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      suffixStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      counterStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      filled: false,
      fillColor: Color(0x00000000),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff586BCA),
      opacity: 1.0,
      size: 24.0,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0xff586BCA),
      opacity: 1.0,
      size: 24.0,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xff586BCA),
      unselectedLabelColor: Color(0xb2ffffff),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Color(0xff009690)),
    brightness: Brightness.dark,
    listTileTheme: const ListTileThemeData(iconColor: Color(0xff009690)),
    appBarTheme: const AppBarTheme(
        color: Color(0xff131315),
        iconTheme: IconThemeData(
          color: Color(0xff009690),
          opacity: 1.0,
          size: 24.0,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xff009690),
      unselectedItemColor: Colors.grey,
      backgroundColor: Color(0xff27292B),
    ),
    primaryColor: const Color(0xff009690),
    canvasColor: const Color(0xff303030),
    scaffoldBackgroundColor: const Color(0xff131315),
    bottomAppBarColor: const Color(0xff27282d),
    toggleableActiveColor: const Color(0xff009690),
    secondaryHeaderColor: const Color(0xff616161),
    backgroundColor: const Color(0xff616161),
    dialogBackgroundColor: const Color(0xff424242),
    indicatorColor: const Color(0xff009691),
    hintColor: const Color(0x80ffffff),
    errorColor: const Color(0xffd32f2f),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88.0,
      height: 36.0,
      padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0.0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xff019495),
      disabledColor: Color(0x4dffffff),
      highlightColor: Color(0x29ffffff),
      splashColor: Color(0x1fffffff),
      colorScheme: ColorScheme(
        primary: Color(0xff019495),
        secondary: Color(0xff019495),
        surface: Color(0xff424242),
        background: Color(0xff616161),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xffffffff),
        onSecondary: Color(0xff000000),
        onSurface: Color(0xffffffff),
        onBackground: Color(0xffffffff),
        onError: Color(0xff000000),
        brightness: Brightness.dark,
      ),
    ),
    textTheme: const TextTheme(
      headline4: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: 96.0,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
      headline3: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: 60.0,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
      headline2: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: 48.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      headline1: TextStyle(
        color: Color(0xffffffff),
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        color: Color(0xb3ffffff),
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      button: TextStyle(
        color: Color(0xffffffff),
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      overline: TextStyle(
        color: Color(0xffffffff),
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff009692),
      // opacity: 1.0,
      size: 24.0,
    ),
  );
}
