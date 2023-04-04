import 'package:flutter/material.dart';
import 'package:islame/homePage.dart';
import 'package:islame/provider/myProvider.dart';
import 'package:islame/taps/hades/hadesConent.dart';
import 'package:islame/taps/quran/suraDetailsCntent.dart';
import 'package:islame/theme/My_Theme_Data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return MyProvider();
      },
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    gitShared();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale(provider.AppLanguage),
      routes: {
        homePage.id: (context) => homePage(),
        hadesConent.id: (context) => hadesConent(),
        suraDEtailsContent.id: (context) => suraDEtailsContent(),
      },
      initialRoute: homePage.id,
      theme: provider.apptheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }

  Future<void> gitShared() async {
    var provider = Provider.of<MyProvider>(context);

    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? appLanguge = prefs.getString('appLanguage');
    provider.changeLanguage(appLanguge ?? 'ar');

    if (prefs.getString('theme') == 'light') {
      provider.changethem(MyThemeData.Lighttheme);
    } else {
      provider.changethem(MyThemeData.darkTheme);
    }
  }
}
