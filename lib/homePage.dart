import 'package:flutter/material.dart';

import 'encounterPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      (states) => Colors.black),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('#D9D9D9')),
                ),
                onPressed: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EncounterPage(title: "モンスターがあらわれた！");
                  }))
                },
                child: const Text('エンカウント'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
