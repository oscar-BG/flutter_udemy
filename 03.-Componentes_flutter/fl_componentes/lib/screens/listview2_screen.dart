import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const['Megaman', 'Metal Gear', 'Super smash', 'Final Fantasy'];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title:  Text(options[index]),  // Texto o titulo
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,), // Icono
          onTap: () {
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}