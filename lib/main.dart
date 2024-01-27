import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceNum1 = 1;
  int diceNum2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dice play"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset("lib/images/dice$diceNum1.png"),
                ),
                Expanded(
                  child: Image.asset("lib/images/dice$diceNum2.png"),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  diceNum1 = Random().nextInt(6) + 1;
                  diceNum2 = Random().nextInt(6) + 1;
                });
              },
              child: Text("Roll"),
              color: Colors.white60,
              splashColor: Colors.blue,
              highlightColor: Colors.greenAccent,
              hoverColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
