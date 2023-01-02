import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Scaffold: Lienzo la cual ya tiene opciones par cargar animaciones
  // BuildContext: es el arbol de widgets
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: const Center(
        child: Text('Hola desde Home Screen'),
      ),
    );
  }

}