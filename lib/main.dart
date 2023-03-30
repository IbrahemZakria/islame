import 'package:flutter/material.dart';
import 'package:islame/homePage.dart';
import 'package:islame/theme/My_Theme_Data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        homePage().id: (context) => homePage(),
      },
      initialRoute: homePage().id,
      theme: MyThemeData.Lighttheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
