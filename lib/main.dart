import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView.builder(
              itemCount: 16, itemBuilder: (context, index) => Cube()),
        ),
      ),
    );
  }
}

class Cube extends StatefulWidget {
  @override
  _CubeState createState() => _CubeState();
}

class _CubeState extends State<Cube> {
  int _currentState = 0;

  List<Color> _colors = [
    Colors.transparent,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
  ];

  void _changeState(DragEndDetails details) {
    if (details.velocity.pixelsPerSecond.dx > 0) {
      setState(() {
        _currentState = (_currentState + 1) % 5;
      });
    } else {
      setState(() {
        _currentState = (_currentState - 1 + 5) % 5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanEnd: _changeState,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: _colors[_currentState],
          border: Border.all(),
        ),
      ),
    );
  }
}
