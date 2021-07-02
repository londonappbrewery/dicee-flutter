import 'package:flutter/material.dart';
import 'package:dicee/styles/button_style.dart';
import 'package:dicee/widgets/dice_widget.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll the Dice...'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// Class DicePage extends StatefulWidget {
//   @override
//   _Dice createState() => _Dice();
// }

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 3;
  int rightdicenumber = 2;

  void updateDiceNum(String diceName, int newNum) {
    // print('$diceName, and $newNum');
    if (diceName == "Left") {
      setState(() {
        leftdicenumber = newNum;
      });
    } else if (diceName == "Right") {
      setState(() {
        rightdicenumber = newNum;
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          // flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DiceWidget(
              diceName: "Left",
              diceNum: leftdicenumber,
              stateCallback: (String diceName, int newNum) {
                updateDiceNum(diceName, newNum);
              },
            ),
          ),
        ),
        Expanded(
          // flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DiceWidget(
              diceName: "Right",
              diceNum: rightdicenumber,
              stateCallback: (String diceName, int newNum) {
                updateDiceNum(diceName, newNum);
              },
            ),
          ),
        ),
      ],
    ));
  }
}
