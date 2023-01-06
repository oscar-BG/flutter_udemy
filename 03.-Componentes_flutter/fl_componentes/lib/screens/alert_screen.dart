import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ((context) {
        return  CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            children: const [
              Text('A qui se coloca el contenido'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Aceptar')
            )
          ],
        );
      })
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false, // No se podra cerrar el modal
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('A qui se coloca el contenido'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ]
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
         child: ElevatedButton(
          // onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context), 
          onPressed: () => displayDialogIOS(context), 
          child: const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text('Mostrar alert', style: TextStyle(fontSize: 20),),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.pop(context);
        }),
        child: const Icon(Icons.close),
      ),
    );
  }
}