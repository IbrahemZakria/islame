import 'package:flutter/material.dart';

import 'package:islame/taps/hades/hadesScreen.dart';
import 'package:islame/taps/quran/quranScreen.dart';
import 'package:islame/taps/radioScreen.dart';
import 'package:islame/taps/sephaScreen.dart';
import 'package:islame/theme/My_Theme_Data.dart';

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
    quranScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/mainbg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islame',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.PrimaryColor),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: 'radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: 'sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/hades.png')),
                    label: 'hades'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: 'quran'),
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
