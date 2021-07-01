import 'package:flutter/material.dart';

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
            child: TextButton(
              child: Image.asset('images/dice1.png'),
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              onPressed: () => {debugPrint("woooooo")},
            ),
          ),
        ),
        Expanded(
          // flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage('images/dice1.png'),
            ),
          ),
        ),
      ],
    ));
  }
}
