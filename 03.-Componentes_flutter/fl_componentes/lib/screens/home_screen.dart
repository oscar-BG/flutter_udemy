import 'package:fl_componentes/router/app_routes.dart';
import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: Text(AppRoutes.menuOptions[index].name.toString()),
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
          onTap: () {
            
            // *** Primera forma para navegar entre paginas ***//

            // Navegar a otra pantalla con navigator, enviamos el 
            //context que funciona como un arbol de Widget, para sabaer como esta construida la aplicacion
            // route: 

            // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());

            // Para navegar entre paginas
            // Navigator.push(context, route);

            // Para navegar entre paginas pero elimina la anterior, lo cual no podemos volver
            // Navigator.pushReplacement(context, route);

            // *** Segunda form para nevegar entre paginas ** //
            
            // routeName: nombre de la ruta que especificamos en el archivo main en routes
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route.toString());
          }
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}