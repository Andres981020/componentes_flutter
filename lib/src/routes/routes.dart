import 'package:componentes_app/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes_app/src/pages/alert_page.dart';
import 'package:componentes_app/src/pages/avatar_page.dart';
import 'package:componentes_app/src/pages/card_page.dart';
import 'package:componentes_app/src/pages/home_page.dart';
import 'package:componentes_app/src/pages/animated_container.dart';
import 'package:componentes_app/src/pages/input_page.dart';

Map<String, WidgetBuilder> getAppliationRoutes() {

  return <String, WidgetBuilder> {
        '/'                  : (BuildContext context) => const HomePage(),
        'alert'              : (BuildContext context) => const AlertPage(),
        'avatar'             : (BuildContext context) => const AvatarPage(),
        'card'               : (BuildContext context) => const CardPage(),
        'animatedContainer'  : (BuildContext context) => const AnimatedContainerPage(),
        'inputs'             : (BuildContext context) => const InputPage(),
        'list'               : (BuildContext context) => SliderPage(),
  };

}





