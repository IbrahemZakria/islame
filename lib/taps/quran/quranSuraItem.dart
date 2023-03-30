import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class quranSuraItem extends StatelessWidget {
  quranSuraItem({required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name ',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
