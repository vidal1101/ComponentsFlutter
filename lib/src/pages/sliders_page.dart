import 'package:flutter/material.dart';

class Sliders_Page extends StatefulWidget {
  @override
  _Sliders_PageState createState() => _Sliders_PageState();
}

class _Sliders_PageState extends State<Sliders_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        child: Text('Sliders Page '),
      ),
    );
  }
}
