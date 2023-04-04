import 'package:flutter/material.dart';
import 'package:islame/theme/My_Theme_Data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String AppLanguage = 'en';
  ThemeData apptheme = MyThemeData.Lighttheme;
  Future<void> changeLanguage(String language) async {
    AppLanguage = language;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('appLanguage', AppLanguage);
  }

  Future<void> changethem(ThemeData theme) async {
    apptheme = theme;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        'theme', apptheme == MyThemeData.Lighttheme ? 'light' : 'dark');
  }
}
