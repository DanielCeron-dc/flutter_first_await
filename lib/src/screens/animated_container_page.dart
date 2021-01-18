import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(5.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Animado :)'),
      ),
      body: Center(
        child: Container(
          child: AnimatedContainer(
              width: _width,
              height: _height,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOutExpo,
              decoration: BoxDecoration(
                borderRadius: _borderRadius,
                color: _color,
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit_outlined),
        onPressed: () => onPressedHandler(),
      ),
    );
  }

  void onPressedHandler() {
    setState(() {
      _width = Random().nextInt(300).toDouble();
      _height = Random().nextInt(300).toDouble();
      _color = Color.fromRGBO(
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextDouble()
        );
      _borderRadius =  BorderRadius.circular(Random().nextInt(100).toDouble());
    });
  }
}
