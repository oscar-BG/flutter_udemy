import 'package:flutter/material.dart';

// StatelessWidget: dibuja los widget en la pantalla, pero son de manera estaticos, es decir no cambian despues de su ejecución
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  
  // Scaffold: Lienzo la cual ya tiene opciones par cargar animaciones
  // BuildContext: es el arbol de widgets
  @override
  Widget build(BuildContext context) {

    const fontSize30 =  TextStyle(fontSize: 30);
    int contador = 0;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget> [
            const Text('Número de clicks', style: fontSize30),
            Text('$contador', style: fontSize30,)
          ],
        ),
      ),
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          // A qui crear funcion
          contador++;
          print(contador);
        }
      ) ,
    );
  }

}