import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee (Yahtzee Version)'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // TO DO: Refactor as vars as an Array
  int diceOne = 1;
  int diceTwo = 1;
  int diceThree = 1;
  int diceFour = 1;
  int diceFive = 1;
  int diceSix = 1;

  @override
  Widget build(BuildContext context) {

    void getDiceNumbers(){
      setState(() {
        diceOne = Random().nextInt(6) + 1;
        diceTwo = Random().nextInt(6) + 1;
        diceThree = Random().nextInt(6) + 1;
        diceFour = Random().nextInt(6) + 1;
        diceFive = Random().nextInt(6) + 1;
        diceSix = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                  ),
                  onPressed: () {
                    getDiceNumbers();
                    print('Dice 1 button got pressed.');
                  },
                  child: Image.asset('images/dice$diceOne.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    getDiceNumbers();
                    print('Dice 2 button got pressed.');
                  },
                  child: Image.asset('images/dice$diceTwo.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    getDiceNumbers();
                    print('Dice 3 button got pressed.');
                  },
                  child: Image.asset('images/dice$diceThree.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                  ),
                  onPressed: () {
                    getDiceNumbers();
                    print('Dice 4 button got pressed.');
                  },
                  child: Image.asset('images/dice$diceFour.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                  ),
                  onPressed: () {
                    getDiceNumbers();
                    print('Dice 5 button got pressed.');
                  },
                  child: Image.asset('images/dice$diceFive.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    getDiceNumbers();
                    print('Dice 6 button got pressed.');
                  },
                  child: Image.asset('images/dice$diceSix.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//
// class DicePage extends StatelessWidget {
//
// }
