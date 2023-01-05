import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? txtDescripcion;

  const CustomCardType2({super.key, required this.imageUrl, this.txtDescripcion});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Forzar a que los bordes se recorten
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15) ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, // Toma todo el ancho del widget padre
            height: 250,
            fit: BoxFit.cover, // Ajusta el tamaño de la imagen
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (txtDescripcion != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 20),
              child:  Text(txtDescripcion!)
            )
        ]
      ),
    );
  }
}