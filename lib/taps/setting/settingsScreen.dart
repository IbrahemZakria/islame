import 'package:flutter/material.dart';
import 'package:islame/taps/setting/languageSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame/taps/setting/theme/themeSheet.dart';
import 'package:islame/theme/My_Theme_Data.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          languageSheet(
            language: 'English',
          ),
          ThemeSheet(themeMode: 'ThemeMode')
        ],
      ),
    );
  }
}
