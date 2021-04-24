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
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 3;
  int rightDiceNum = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNum = 5;
                  });
                },
                child: Image.asset("images/dice$leftDiceNum.png")),
          ),
          Expanded(
              child: FlatButton(
            onPressed: () {},
            child: Image.asset("images/dice$rightDiceNum.png"),
          ))
        ],
      ),
    );
  }
}
