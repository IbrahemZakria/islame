import 'package:flutter/material.dart';

class MyThemeData {
  static Color PrimaryColor = Color(0xffB7935F);
  static Color darkPrimaryColor = Color(0xffFACC1D);
  static ThemeData Lighttheme = ThemeData(
    primaryColor: PrimaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
        headline2: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        headline1: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
    scaffoldBackgroundColor: Colors.transparent,
  );
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30))),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          headline2: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)));
}
