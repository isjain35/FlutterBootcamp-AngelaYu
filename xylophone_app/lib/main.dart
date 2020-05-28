import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int n) {
    player.play('note$n.wav');
  }

  Widget buildKeys(int key, Color clr) {
    return Expanded(
      child: FlatButton(
        color: clr,
        onPressed: () {
          playSound(key);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    player.loadAll([
      'note1.wav',
      'note2.wav',
      'note3.wav',
      'note4.wav',
      'note5.wav',
      'note6.wav',
      'note7.wav'
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeys(1, Colors.red),
              buildKeys(2, Colors.orange),
              buildKeys(3, Colors.yellow),
              buildKeys(4, Colors.green),
              buildKeys(5, Colors.teal),
              buildKeys(6, Colors.blue),
              buildKeys(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
