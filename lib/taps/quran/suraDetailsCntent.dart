import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../provider/myProvider.dart';
import '../../theme/My_Theme_Data.dart';

class suraDEtailsContent extends StatefulWidget {
  static const String id = 'suraDEtailsContent';

  @override
  State<suraDEtailsContent> createState() => _suraDEtailsContentState();
}

class _suraDEtailsContentState extends State<suraDEtailsContent> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    var suraDetailsArgs =
        ModalRoute.of(context)!.settings.arguments as suraNameModel;
    if (verses.isEmpty) {
      loadFile(suraDetailsArgs.index);
    }

    return Stack(children: [
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
            '${suraDetailsArgs.name}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              verses[index],
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            );
          },
          itemCount: verses.length,
        ),
      )
    ]);
  }

  Future<void> loadFile(int index) async {
    String content = await rootBundle.loadString(
      'assets/fiels/${index + 1}.txt',
    );
    List<String> liens = content.split('\n');

    verses = liens;
    print('jkcs${verses[0]}');
    setState(() {});
  }
}

class suraNameModel {
  String name;
  int index;
  suraNameModel(this.name, this.index);
}
