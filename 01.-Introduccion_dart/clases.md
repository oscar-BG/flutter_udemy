# Clases

```
void main(){
  
  // Llmar a una clase si constructor
  //final wolverine = new Heroe();
  
  //   Instancia de la clase
  // wolverine.nombre = 'Logan';
  // wolverine.poder = 'Regeneración';
  
  // Llamar a una clase con constructor
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneración');
  
  print(wolverine);
}

class Heroe {
  //   Propiedad que se puede inicializar con valores nulos
  // String? nombre;
  // String? poder;
  
  // Podemos ocupar el constructor para no aceptar valores nulos en las propiedades
  String nombre;
  String poder;
  
  // Para crear el constructos ocupamos el nombre de la clase, recibimos parametros por nombre y requeridos
  Heroe({required this.nombre, required this.poder});
  
  // Sobreescribimos el metodo toString y enviamos las propiedades de la clase
  // $this hace referencia a que va a ocupar propiedades de la instancia
  @override
  String toString() {
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
```