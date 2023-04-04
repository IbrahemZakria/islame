import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islame/provider/myProvider.dart';
import 'package:islame/taps/setting/theme/bottomThemeSheet.dart';
import 'package:provider/provider.dart';

import '../../../theme/My_Theme_Data.dart';

class ThemeSheet extends StatefulWidget {
  ThemeSheet({required this.themeMode});
  String themeMode;
  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
      height: MediaQuery.of(context).size.height * .05,
      decoration: BoxDecoration(
        border: Border.all(
            color: pro.apptheme == MyThemeData.Lighttheme
                ? MyThemeData.PrimaryColor
                : MyThemeData.darkPrimaryColor,
            width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              pro.apptheme == MyThemeData.Lighttheme
                  ? 'light Mode'
                  : 'dark Mode',
              style: TextStyle(
                  color: pro.apptheme == MyThemeData.Lighttheme
                      ? Colors.black
                      : Colors.white)),
          IconButton(
              onPressed: showbotomSheet,
              icon: Icon(
                Icons.arrow_drop_down,
                color: pro.apptheme == MyThemeData.Lighttheme
                    ? Colors.black
                    : Colors.white,
              ))
        ],
      ),
    );
  }

  Future<void> showbotomSheet() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return bottomThemeSheet();
      },
    );
    setState(() {});
  }
}
