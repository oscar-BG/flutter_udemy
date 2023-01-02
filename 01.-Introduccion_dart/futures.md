# Futures
 Ejecuta una tarea asincrona

 ```
 void main() {
  print('Antes de la peticion');
  
  httpGet('http:example.com')
    .then((data) {
      print(data);
    });
    
    
  print('Fin del programa');
}

Future httpGet( String url) {
  return Future.delayed(Duration (seconds: 3),(){
    return 'Hola Mundo';
  });
}
 ```