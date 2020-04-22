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
  var leftRandomNumber = 1;
  var rightRandomNumber = 1;

  void randomDiceGenerator() {
    setState(() {
      leftRandomNumber = Random().nextInt(6) + 1;
      rightRandomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDiceGenerator();
              },
              child: Image.asset('images/dice$leftRandomNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDiceGenerator();
              },
              child: Image.asset('images/dice$rightRandomNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
