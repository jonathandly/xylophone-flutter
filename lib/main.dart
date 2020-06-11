import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, num: 1),
              buildKey(color: Colors.blue, num: 2),
              buildKey(color: Colors.green, num: 3),
              buildKey(color: Colors.orange, num: 4),
              buildKey(color: Colors.yellow, num: 5),
              buildKey(color: Colors.brown, num: 6),
              buildKey(color: Colors.teal, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
