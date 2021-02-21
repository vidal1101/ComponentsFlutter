
import 'package:flutter/material.dart';
import 'package:componetesflutter/src/routes/routes_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/**
 * DESARROLADOR: Rodrigo Vidal 
 * se importa las librerais de materiual dart, para la contruccion de la app 
 * a traves del metodo de main se llama la clase MYAPP()
 *  un Widget sin cambiatr su comportamiento.
 *
 * 
 */

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final fuente =  TextStyle(fontSize: 10.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /**
       * se añadio los lenguajes al material Dart, y tambien en pubsyec.yaml
       */
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // español, no country code
      ],
      title: 'Componentes_App Flutter',

      //ruta de inicio declarada para evitar un nullPointer
      initialRoute: '/',

      routes: getApliacationRoutes(),
    );
  }

 
}


