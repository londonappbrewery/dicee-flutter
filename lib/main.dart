import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceeNum = 1;
  int rightDiceeNum = 1;

  void genNum() {
    leftDiceeNum = Random().nextInt(6) + 1;
    rightDiceeNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  genNum();
                });
              },
              child: Image.asset('images/dice$leftDiceeNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  genNum();
                });
              },
              child: Image.asset('images/dice$rightDiceeNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
