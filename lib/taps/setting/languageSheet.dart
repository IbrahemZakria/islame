import 'package:flutter/material.dart';
import 'package:islame/provider/myProvider.dart';
import 'package:islame/taps/setting/bottomSheet.dart';
import 'package:provider/provider.dart';

import '../../theme/My_Theme_Data.dart';

class languageSheet extends StatefulWidget {
  languageSheet({
    required this.language,
  });
  String language;

  @override
  State<languageSheet> createState() => _languageSheetState();
}

class _languageSheetState extends State<languageSheet> {
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
            pro.AppLanguage == 'en' ? 'English' : 'العربيه',
            style: TextStyle(
                color: pro.apptheme == MyThemeData.Lighttheme
                    ? Colors.black
                    : Colors.white),
          ),
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
        return bottomSheet();
      },
    );
    setState(() {});
  }
}
