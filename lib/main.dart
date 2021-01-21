
import 'package:flutter/material.dart';

//mis importaciones
import 'package:componetesflutter/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final fuente =  TextStyle(fontSize: 10.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'componentes App',
      home: Home_Page()
    );
  }

 
}


