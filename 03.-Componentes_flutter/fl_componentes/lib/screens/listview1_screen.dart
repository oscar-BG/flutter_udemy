import 'package:flutter/material.dart';

class Listviwe1Screen extends StatelessWidget {
   
  const Listviwe1Screen({Key? key}) : super(key: key);

  final options = const['Megaman', 'Metal Gear', 'Super smash', 'Final Fantasy'];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ) 
          ).toList()
        ],
      )
    );
  }
}