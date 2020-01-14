import 'package:flutter/material.dart';
import 'package:primera_app/src/pages/alert_page.dart';
import 'package:primera_app/src/pages/animated_container.dart';
import 'package:primera_app/src/pages/avatar_page.dart';
import 'package:primera_app/src/pages/card_page.dart';
import 'package:primera_app/src/pages/home_page.dart';
import 'package:primera_app/src/pages/input_page.dart';
import 'package:primera_app/src/pages/listview_page.dart';
import 'package:primera_app/src/pages/slider_pade.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    AvatarPAge.namePage: (BuildContext context) => AvatarPAge(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'lista': (BuildContext context) => ListaPage(),
  };
}
