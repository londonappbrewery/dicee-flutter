import 'package:flutter/material.dart';
import 'package:dicee/styles/buttonstyle.dart';
import 'package:dicee/widgets/custom_button.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          // flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton.custom(
              child: Image.asset('images/dice1.png'),
              onPressed: () => {print("Dice One")},
            ),
          ),
        ),
        Expanded(
          // flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton.customTwo(
              child: Image.asset('images/dice1.png'),
              onPressed: () => {print("Dice Two")},
              // customCallback: (data) => {print("$data")}
            ),
          ),
        ),
      ],
    ));
  }
}
