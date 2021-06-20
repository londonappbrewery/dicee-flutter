import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent,
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

  int leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
                leftDiceNumber = 4;
              });

            },child: Image.asset('images/dice$leftDiceNumber.png'),),),
          Expanded(child: TextButton(
            onPressed: (){

            },
            child: Image.asset('images/dice1.png'),),),
        ],
      ),
    );
  }
}




