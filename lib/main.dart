// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          // ignore: prefer_const_constructors
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: boss(),
      ),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class boss extends StatefulWidget {
  @override
  _bossState createState() => _bossState();
}

class _bossState extends State<boss> {
  int ran = 1;
  void bosschage() {
    setState(() {
      ran = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
          child: Image.asset('images/ball$ran.png'),
          onPressed: () {
            bosschage();
          },
        )),
      ],
    ));
  }
}
