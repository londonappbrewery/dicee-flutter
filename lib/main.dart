import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade700,
        appBar: AppBar(
          title: Text('Dice Challenge'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1, rightDice = 1;
  void shuffle() {
    setState(() {
      leftDice = Random().nextInt(5) + 1;
      rightDice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: shuffle,
            ),
          ),
          Expanded(
            child: MaterialButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: shuffle,
            ),
          ),
        ],
      ),
    );
  }
}
