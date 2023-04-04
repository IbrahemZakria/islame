import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islame/provider/myProvider.dart';
import 'package:provider/provider.dart';

import '../../../theme/My_Theme_Data.dart';

class bottomThemeSheet extends StatefulWidget {
  const bottomThemeSheet({super.key});

  @override
  State<bottomThemeSheet> createState() => _bottomThemeSheetState();
}

class _bottomThemeSheetState extends State<bottomThemeSheet> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      color: pro.apptheme == MyThemeData.Lighttheme
          ? Colors.white
          : MyThemeData.darkaccentColor,
      child: Column(
        children: [
          InkWell(
              onTap: () {
                pro.changethem(MyThemeData.Lighttheme);
              },
              child: SelectedLanuage('LightMode',
                  pro.apptheme == MyThemeData.Lighttheme ? true : false)),
          InkWell(
              onTap: () {
                pro.changethem(MyThemeData.darkTheme);
              },
              child: SelectedLanuage('DarkMode',
                  pro.apptheme == MyThemeData.darkTheme ? true : false))
        ],
      ),
    );
  }

  Widget SelectedLanuage(String text, bool selection) {
    var pro = Provider.of<MyProvider>(context);

    if (selection) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Icon(
            Icons.check,
            color: pro.apptheme == MyThemeData.Lighttheme
                ? MyThemeData.PrimaryColor
                : MyThemeData.darkPrimaryColor,
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.w300),
          ),
          Icon(
            Icons.check,
            color: pro.apptheme == MyThemeData.Lighttheme
                ? Colors.black
                : Colors.white,
          )
        ],
      );
    }
  }
}
