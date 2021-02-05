import 'package:flutter/material.dart';
import 'dart:math';

class Animated_Container extends StatefulWidget {
  @override
  AnimatedContainerState createState() => AnimatedContainerState();
}

class AnimatedContainerState extends State<Animated_Container> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.deepOrangeAccent;

  BorderRadiusGeometry _borderRaduis = BorderRadius.circular(5.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRaduis,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        onPressed: _cambiarColores,
      ),
    );
  }

  void _cambiarColores() {
    final ramdon = Random();

    setState(() {
      _width = ramdon.nextInt(325).toDouble();
      _heigth = ramdon.nextInt(325).toDouble();
      _color = Color.fromRGBO(
          ramdon.nextInt(255), ramdon.nextInt(255), ramdon.nextInt(255), 1);

      _borderRaduis =  BorderRadius.circular(ramdon.nextInt(100).toDouble());
    });
  }
}
