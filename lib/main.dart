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
  Random random = new Random();
  int leftDiceNumber = 1;
  int rigthDiceNumber = 4;

  void geneateRandomDice() {
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
      rigthDiceNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                geneateRandomDice();
                print("Left dice clicked: $leftDiceNumber");
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$rigthDiceNumber.png"),
              onPressed: () {
                geneateRandomDice();
                print("Left dice clicked: $rigthDiceNumber");
              },
            ),
          ),
        ],
      ),
    );
  }
}
