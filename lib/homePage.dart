import 'package:flutter/material.dart';
import 'package:islame/provider/myProvider.dart';

import 'package:islame/taps/hades/hadesScreen.dart';
import 'package:islame/taps/quran/quranScreen.dart';
import 'package:islame/taps/radioScreen.dart';
import 'package:islame/taps/sephaScreen.dart';
import 'package:islame/taps/setting/settingsScreen.dart';
import 'package:islame/theme/My_Theme_Data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class homePage extends StatefulWidget {
  static String id = 'home page';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentIndex = 0;

  List<Widget> screens = [
    radioScreen(),
    sephaScreen(),
    hadesScreen(),
    quranScreen(),
    settingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          pro.apptheme == MyThemeData.Lighttheme
              ? 'assets/images/mainbg.png'
              : 'assets/images/darkbg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islame,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: pro.apptheme == MyThemeData.Lighttheme
                    ? MyThemeData.PrimaryColor
                    : MyThemeData.darkaccentColor),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/hades.png')),
                    label: AppLocalizations.of(context)!.hades),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.setting),
              ],
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              currentIndex: currentIndex,
            ),
          ),
          body: screens[currentIndex],
        )
      ],
    );
  }
}
