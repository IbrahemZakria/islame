import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/taps/hades/hadesItem.dart';

class hadesConent extends StatefulWidget {
  static String id = 'hadesConent';

  @override
  State<hadesConent> createState() => _hadesConentState();
}

class _hadesConentState extends State<hadesConent> {
  String? title;

  List<String> hadesliens = [];

  @override
  Widget build(BuildContext context) {
    var hadesItemArgs =
        ModalRoute.of(context)!.settings.arguments as hadesModul;
    if (hadesliens.isEmpty) {
      loadHades(hadesItemArgs.Index);
    }

    return Stack(children: [
      Image.asset(
        'assets/images/mainbg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${title}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: ListView.builder(
          itemCount: hadesliens.length,
          itemBuilder: (context, index) {
            return Text(
              hadesliens[index],
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            );
          },
        ),
      )
    ]);
  }

  Future<void> loadHades(int index) async {
    String content = await rootBundle.loadString('assets/fiels/ahadeth .txt');
    content.trim();
    List<String> hadeses = content.split('#\r\n');
    List<String> hadesLiens = hadeses[index].split('\n');
    title = hadesLiens[0];
    hadesLiens.removeAt(0);
    hadesliens = hadesLiens;

    setState(() {});
  }
}

class hadesModul {
  String name;
  int Index;
  hadesModul({required this.name, required this.Index});
}

class hadesContentModul {
  String title;
  List hadesLiens;
  hadesContentModul({required this.title, required this.hadesLiens});
}
