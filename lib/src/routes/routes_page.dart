import 'package:flutter/material.dart';

import 'package:componetesflutter/src/pages/alerts_page.dart';
import 'package:componetesflutter/src/pages/avatar_page.dart';
import 'package:componetesflutter/src/pages/home_page.dart';
import 'package:componetesflutter/src/pages/card_page.dart';
import 'package:componetesflutter/src/pages/animated_container.dart';
import 'package:componetesflutter/src/pages/inputs_page.dart';

Map<String, WidgetBuilder> getApliacationRoutes() {
  return <String, WidgetBuilder>{
    '/'                 : (BuildContext context) => Home_Page(),
    'alert'             : (BuildContext context) => AlertsPage(),
    'avatar'            : (BuildContext context) => AvatarPage(),
    'card'              : (BuildContext context) => Card_Page(),
    'animatedContainer' : (BuildContext context) => Animated_Container(),
    'inputs'            : (BuildContext context) => Inputs_Page(),

  };
}
