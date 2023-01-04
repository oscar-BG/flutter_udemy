import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/listview1': (BuildContext context) => const Listview1Screen(),
    '/listview2': (BuildContext context) => const Listview2Screen(),
    '/alert': (BuildContext context) => const AlertScreen(),
    '/card': (BuildContext context) => const CardScreen(),
  };

  static  Route<dynamic> onGenerateRoute(RouteSettings setting){
        // onGenerateRoute: se ejecuta  cuando Navigator no encuentra la ruta especificada
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
}