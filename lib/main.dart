import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Magic Life',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[700],
          title: Text(
            'Ask me anything',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w900,
              fontSize: 25.0,
            ),
          ),
        ),
        body: SafeArea(
          child: MagicApp(),
        ),
      ),
    ),
  );
}

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int _ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            _ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$_ballNumber.png'),
      ),
    );
  }
}
