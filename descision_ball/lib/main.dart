import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Descision Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DescisionBall(),
    ),
  );
}

class DescisionBall extends StatefulWidget {
  const DescisionBall({Key key}) : super(key: key);

  @override
  _DescisionBallState createState() => _DescisionBallState();
}

class _DescisionBallState extends State<DescisionBall> {
  int descNo = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(),
                Text(
                  "If you're not able to descide the next move and want it to be random try the Descision Ball.",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('assets/$descNo.png'),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      50,
                    ),
                  ),
                  height: 50.0,
                  child: Text(
                    'Spin the Descision Ball',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  color: Colors.black54,
                  onPressed: () {
                    setState(() {
                      descNo = Random().nextInt(8);
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
