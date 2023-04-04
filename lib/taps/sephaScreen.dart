import 'package:flutter/material.dart';
import 'package:islame/provider/myProvider.dart';
import 'package:provider/provider.dart';

import '../theme/My_Theme_Data.dart';

class sephaScreen extends StatefulWidget {
  @override
  State<sephaScreen> createState() => _sephaScreenState();
}

class _sephaScreenState extends State<sephaScreen> {
  int counter = 0;
  double angle = 0;
  int i = 0;
  List<String> taspeh = [
    'سبحان الله',
    'الحمد الله',
    ' الله اكبر',
    'لاإله إلا الله',
    'لا حول ولا قوه إلا بالله الله',
  ];

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(
      children: [
        pro.apptheme == MyThemeData.Lighttheme
            ? Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .41,
                child: Stack(children: [
                  Positioned(
                      left: MediaQuery.of(context).size.width * .5,
                      child: Image.asset('assets/images/head of seb7a.png')),
                  Positioned(
                      top: MediaQuery.of(context).size.height * .1,
                      left: MediaQuery.of(context).size.width * .19,
                      child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            angle--;
                            if (counter > 32) {
                              counter = 0;
                              i++;
                            } else {
                              counter++;
                            }
                            setState(() {});
                          },
                          child: Transform.rotate(
                              angle: angle,
                              child: Image.asset(
                                  'assets/images/body of seb7a.png'))))
                ]),
              )
            : Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .41,
                child: Stack(children: [
                  Positioned(
                      left: MediaQuery.of(context).size.width * .5,
                      child: Image.asset('assets/images/headofseb7aDark.png')),
                  Positioned(
                      top: MediaQuery.of(context).size.height * .1,
                      left: MediaQuery.of(context).size.width * .19,
                      child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            angle--;
                            if (counter > 32) {
                              counter = 0;
                              i++;
                            } else {
                              counter++;
                            }
                            setState(() {});
                          },
                          child: Transform.rotate(
                              angle: angle,
                              child: Image.asset(
                                  'assets/images/bodyofseb7aDark.png'))))
                ]),
              ),
        Text(
          taspeh[i],
          style: Theme.of(context).textTheme.headline1,
        ),
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: pro.apptheme == MyThemeData.Lighttheme
                ? MyThemeData.PrimaryColor
                : MyThemeData.darkPrimaryColor,
          ),
          child: Text(
            '$counter ',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        InkWell(
          onTap: () {
            if (counter > 32) {
              counter = 0;
              i++;
            } else {
              counter++;
            }
            setState(() {});
          },
          child: Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: pro.apptheme == MyThemeData.Lighttheme
                  ? MyThemeData.PrimaryColor
                  : MyThemeData.darkPrimaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  taspeh[i],
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
