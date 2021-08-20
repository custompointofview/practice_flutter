import 'dart:math';

import 'package:flutter/material.dart';

final rand = Random();

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.amber,
        ),
        body: DicePage(key: UniqueKey()),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({required Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = 1 + rand.nextInt(6);
                rightDiceNumber = 1 + rand.nextInt(6);
              });
            },
            child: Text('+'),
          ),
        ],
      ),
    );
  }
}
