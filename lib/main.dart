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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void buttonPressed() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(buttonPressed);
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(buttonPressed);
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )),
        ],
      ),
    );
  }
}
