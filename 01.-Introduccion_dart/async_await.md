# Async await

```
void main() async {
  print('Antes de la peticion');
  
  final nombre = await getNombre('10');
  print(nombre);
//   getNombre('10').then((data) => print(data));
    
    
  print('Fin del programa');
}

Future<String> getNombre (String id) async {
  return '$id - Fernando';
}

Future httpGet( String url) {
  return Future.delayed(Duration (seconds: 3),(){
    return 'Hola Mundo';
  });
}

```