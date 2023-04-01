import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:islame/taps/hades/hadesItem.dart';
import 'package:islame/theme/My_Theme_Data.dart';

class hadesScreen extends StatelessWidget {
  const hadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/hadesLogo.png'),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return hadesItem(
                    Name: 'الحديث رقم ${index + 1}',
                    index: index,
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    color: MyThemeData.PrimaryColor,
                  );
                },
                itemCount: 50))
      ],
    );
  }
}
