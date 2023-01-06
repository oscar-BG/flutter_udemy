import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('RD'),
            ),
          )
        ],
      ),
      body: const Center(
         child:  CircleAvatar(
          maxRadius: 150,
          backgroundImage : NetworkImage('https://cdn.pixabay.com/photo/2022/06/23/12/40/actor-7279706_960_720.png'),
        )
      ),
    );
  }
}