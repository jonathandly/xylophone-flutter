import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.redAccent,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orangeAccent,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.yellowAccent,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.purpleAccent,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.brown,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
