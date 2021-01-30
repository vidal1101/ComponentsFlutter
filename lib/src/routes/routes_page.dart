import 'package:flutter/material.dart';

import 'package:componetesflutter/src/pages/alerts_page.dart';
import 'package:componetesflutter/src/pages/avatar_page.dart';
import 'package:componetesflutter/src/pages/home_page.dart';
import 'package:componetesflutter/src/pages/card_page.dart';


Map<String, WidgetBuilder> getApliacationRoutes() {

  return <String, WidgetBuilder>{
    '/'       : (BuildContext context) => Home_Page(),
    'alert'   : (BuildContext context) => AlertsPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'card'    : (BuildContext context)=> Card_Page(),
  };

}
