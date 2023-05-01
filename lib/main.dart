import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static int getRandom() => Random().nextInt(5) + 1;
  int rightDice = getRandom();
  int leftDice = getRandom();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        GestureDetector(
            onTap: () => setState(() => leftDice = getRandom()),
            child: Image.asset("images/dice$leftDice.png", width: 120)),
        GestureDetector(
            onTap: () => setState(() => rightDice = getRandom()),
            child: Image.asset("images/dice$rightDice.png", width: 120)),
      ]),
    );
  }
}
