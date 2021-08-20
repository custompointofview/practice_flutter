import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  var noteColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.pink
  ];

  void playSound({required int noteNum}) {
    final player = AudioCache();
    player.play('sounds/note$noteNum.wav');
  }

  Widget buildKey({required int noteNum}) => Expanded(
        child: MaterialButton(
          color: noteColors[noteNum - 1],
          onPressed: () {
            playSound(noteNum: noteNum);
          },
        ),
      );

  List<Widget> buildKeys() {
    List<Widget> retList = [];

    noteColors.asMap().forEach((key, value) {
      retList.add(buildKey(noteNum: key + 1));
    });
    return retList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: buildKeys(),
            ),
          ),
        ),
      ),
    );
  }
}
