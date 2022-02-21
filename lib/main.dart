import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  final _primaryColor = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _primaryColor,
        appBar: AppBar(
          backgroundColor: _primaryColor,
          title: const Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var _imageNumber = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextButton(
          onPressed: () {
            setState(() {
              _imageNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$_imageNumber.png'),
        ),
      ),
    );
  }
}
