import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask me anything'),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ansImage = 0;
  bool _enabled = true;
  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        setState(() {
          ansImage = (Random().nextInt(5)) + 1;
          _enabled = false;
        });
      };
    } else {}
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Expanded(
            child: Image.asset('images/ball$ansImage.png'),
          ),
          onPressed: () {
            setState(() {
              if (ansImage != 0) {
                ansImage = (Random().nextInt(5)) + 1;
              }
            });
          },
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          child: Center(
            child: RaisedButton(
              disabledColor: Colors.grey,
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Try first time',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: _onPressed,
            ),
          ),
        )
      ],
    );
  }
}
