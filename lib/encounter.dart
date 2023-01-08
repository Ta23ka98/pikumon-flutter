import 'package:flutter/material.dart';

class Encounter extends StatefulWidget {
  Encounter({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _EncounterState createState() => _EncounterState();
}

class _EncounterState extends State<Encounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 54,
              width: 295,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('#F31C1C')),
                ),
                onPressed: () => {print("攻撃！")},
                child: const Text('攻撃！'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
