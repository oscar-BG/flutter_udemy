import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(  // Creamos una lista
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 15,),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2022/12/15/09/13/nature-7657230_960_720.jpg',txtDescripcion: 'Imagen 1'),
          SizedBox(height: 15,),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2022/11/20/20/02/caterpillars-7605091_960_720.jpg',),
          SizedBox(height: 15,),
          CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2022/11/27/18/09/butterfly-7620445_960_720.jpg',txtDescripcion: 'Imagen 3'),
        ],
      )
    );
  }
}

