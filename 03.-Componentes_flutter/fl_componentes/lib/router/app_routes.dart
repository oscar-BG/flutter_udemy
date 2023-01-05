import 'package:flutter/material.dart';

import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: '/home',name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: '/listview1',name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(route: '/listview2',name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list_rounded),
    MenuOption(route: '/alert',name: 'Alertas alert', screen: const AlertScreen(), icon: Icons.assignment_late_sharp),
    MenuOption(route: '/card',name: 'Tarjetas - card', screen: const CardScreen(), icon: Icons.credit_card_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/listview1': (BuildContext context) => const Listview1Screen(),
    '/listview2': (BuildContext context) => const Listview2Screen(),
    '/alert': (BuildContext context) => const AlertScreen(),
    '/card': (BuildContext context) => const CardScreen(),
  };
  */
  static  Route<dynamic> onGenerateRoute(RouteSettings setting){
    // onGenerateRoute: se ejecuta  cuando Navigator no encuentra la ruta especificada
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}