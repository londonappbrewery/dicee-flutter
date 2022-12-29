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

class DicePage extends StatelessWidget {
  int left = 4;
  int right = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
                 child:TextButton(
                   onPressed:(){

                   },
                  child: Image.asset('images/dice$left.png'),
                 ),
              ),


          Expanded(
            child:TextButton(
              onPressed: (){

              },
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }

  //void setState(Null Function() param0) {}

