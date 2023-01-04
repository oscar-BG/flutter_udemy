import 'package:flutter/material.dart';

import 'screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          leading: const Icon(Icons.access_time_outlined),
          title: const Text('Nombre de la ruta'),
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
            Navigator.pushNamed(context, '/card2');
          }
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 10
      )
    );
  }
}