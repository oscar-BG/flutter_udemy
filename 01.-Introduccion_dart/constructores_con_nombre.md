# Constructores con nombre

```
void main(){
  
  final raw_json = {
    'nombre': 'Tony Stark',
    'poder': 'Diner'
  };
  
  // Llamamos a la case enviando el map
  final iroman = Heroe.fromJson(raw_json);
  
  print(iroman);
}

class Heroe {

  String nombre;
  String poder;
  String ocupacion;
  
  // Creamos el constructor e indicamos que aceptara un json
  Heroe.fromJson(Map<String, String> json): 
    this.nombre = json['nombre']!,
    this.poder = json['poder']!,
    this.ocupacion = json['ocupacion']?? 'No se encontro';
  
  // Los dos puntos indican que es lo primero que se va a ejecutar cuando se crea una instancia,
  // De esta manera las proiedades siempre puede inicializar con un valor, y no aceptar valores nulos
  
  
  
  @override
  String toString() {
    return 'nombre: ${this.nombre}, poder: ${this.poder}, ocupacion: ${this.ocupacion}';
  }
}
```