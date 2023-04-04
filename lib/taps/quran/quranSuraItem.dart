import 'package:flutter/material.dart';
import 'package:islame/taps/quran/suraDetailsCntent.dart';

class quranSuraItem extends StatelessWidget {
  quranSuraItem({required this.name, required this.index});
  String name;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, suraDEtailsContent.id,
            arguments: suraNameModel(name, index));
      },
      child: Text(
        '$name ',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
