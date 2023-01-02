# Clases abstractas

```
void main() {
  final perro = new Perro();
  final gato = new Gato();
  
  
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  
  // Las clases abstract no pueden ser inicializadas o instanciadas
  int? patas;
 
  
  void emitirSonido();
}

class Perro implements Animal {
  // Las clases abstract se puede implementar a otras clases
  
  int? patas;
  
  void emitirSonido() {
    print('Guuuu');
  }
}

class Gato implements Animal {
  int? patas;
  int? cola;
  
  void emitirSonido() {
    print('miiuu');
  }
  
}
```