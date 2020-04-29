import 'package:flutter/material.dart';
import 'dart:math';

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
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdicenumber = Random().nextInt(6) + 1;
                  rightdicenumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$leftdicenumber.png',
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightdicenumber = Random().nextInt(6) + 1;
                  leftdicenumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'images/dice$rightdicenumber.png',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
