import 'package:flutter/material.dart';
import 'package:islame/homePage.dart';
import 'package:islame/taps/hades/hadesConent.dart';
import 'package:islame/taps/quran/suraDetailsCntent.dart';
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
        homePage.id: (context) => homePage(),
        hadesConent.id: (context) => hadesConent(),
        suraDEtailsContent.id: (context) => suraDEtailsContent(),
      },
      initialRoute: homePage.id,
      theme: MyThemeData.Lighttheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
