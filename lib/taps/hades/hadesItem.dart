import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islame/taps/hades/hadesConent.dart';

class hadesItem extends StatelessWidget {
  hadesItem({required this.Name, required this.index});
  String Name;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadesConent.id,
            arguments: hadesModul(name: Name, Index: index));
      },
      child: Text(
        Name,
        style: Theme.of(context).textTheme.headline1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
