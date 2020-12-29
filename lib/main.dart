import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal.shade300,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DicePageState();
  }
}

class DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: () {
                setState(() {
                  generateRandomDiceNumber();
                });
                print('firstbutton: $leftDiceNum');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
                child: Image.asset('images/dice$rightDiceNum.png'),
                onPressed: () {
                  setState(() {
                    generateRandomDiceNumber();
                  });
                  print('secondbutton: $rightDiceNum');
                }),
          )
        ],
      ),
    );
  }

  void generateRandomDiceNumber() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum = Random().nextInt(6) + 1;
  }
}
