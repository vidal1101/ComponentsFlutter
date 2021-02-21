import 'package:flutter/material.dart';

import 'package:componetesflutter/src/pages/alerts_page.dart';
import 'package:componetesflutter/src/pages/avatar_page.dart';
import 'package:componetesflutter/src/pages/home_page.dart';
import 'package:componetesflutter/src/pages/card_page.dart';
import 'package:componetesflutter/src/pages/animated_container.dart';
import 'package:componetesflutter/src/pages/inputs_page.dart';
import 'package:componetesflutter/src/pages/sliders_page.dart';
import 'package:componetesflutter/src/pages/lists_view.dart';
import 'package:componetesflutter/src/pages/camara_page.dart';


/**
 * Devuelve un mapa de la ruta y la pagina que retorna , son las opciones de
 * la ventana pricipal 
 * - se agrega un icono 
 * - se agrega la ruta de destino 
 * - se lee todas las propiedades desde un .json
 */
Map<String, WidgetBuilder> getApliacationRoutes() {
  return <String, WidgetBuilder>{
    '/'                 : (BuildContext context) => Home_Page(),
    'alert'             : (BuildContext context) => AlertsPage(),
    'avatar'            : (BuildContext context) => AvatarPage(),
    'card'              : (BuildContext context) => Card_Page(),
    'animatedContainer' : (BuildContext context) => Animated_Container(),
    'inputs'            : (BuildContext context) => Inputs_Page(),
    'list'              : (BuildContext context) => Sliders_Page(),
    'lista'             : (BuildContext context) => Lists_Page(),
    'Camare'            : (BuildContext context) => Camara_Page(),

  };
}
