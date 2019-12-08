import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBallApp(),
      ),
    );

class MagicBallApp extends StatefulWidget {
  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  var magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            onPressed: (){
              setState(() {
                magicBallNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$magicBallNumber.png'),
          ),
        ),
      ),
    );
  }
}
