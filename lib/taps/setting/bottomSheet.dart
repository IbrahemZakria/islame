import 'package:flutter/material.dart';
import 'package:islame/provider/myProvider.dart';
import 'package:islame/theme/My_Theme_Data.dart';
import 'package:provider/provider.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({super.key});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      color: pro.apptheme == MyThemeData.Lighttheme
          ? Colors.white
          : MyThemeData.darkaccentColor,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                pro.changeLanguage('en');
              },
              child: SelectedLanuage(
                  'English', pro.AppLanguage == 'en' ? true : false)),
          InkWell(
              onTap: () {
                pro.changeLanguage('ar');
              },
              child: SelectedLanuage(
                  'العربيه', pro.AppLanguage == 'ar' ? true : false))
        ],
      ),
    );
  }

  Widget SelectedLanuage(String text, bool selection) {
    var pro = Provider.of<MyProvider>(context);

    if (selection) {
      return Row(
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
          ),
        ],
      );
    }
  }
}
