
import 'package:flutter/material.dart';
import 'package:componetesflutter/src/routes/routes_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final fuente =  TextStyle(fontSize: 10.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Arabic, no country code
      ],
      title: 'Componentes_App Flutter',

      initialRoute: '/',

      routes: getApliacationRoutes(),
    );
  }

 
}


