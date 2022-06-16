// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pinkAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container')
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration( milliseconds: 500),
          curve: Curves.fastOutSlowIn, 
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         _cambiarForma();
        },
        child: Icon(Icons.play_arrow)
      ),
    );
  }

  void _cambiarForma() {

    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255), // red
        random.nextInt(255), // green
        random.nextInt(255), // blue
        1);  // opacity

      _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble() );

    });

  }
}
