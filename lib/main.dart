
import 'package:flutter/material.dart';
import 'package:componetesflutter/src/routes/routes_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final fuente =  TextStyle(fontSize: 10.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes_App Flutter',

      initialRoute: '/',

      routes: getApliacationRoutes(),
    );
  }

 
}


