# Mixins

```
void main() {
  final flipper = new Delfin();
  final batman = new Muercielago();
  
  flipper.nadar();
  
  batman.caminar();
  batman.volar();
}

abstract class Animal {}

abstract class Manifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

abstract class Volador{
  void volar() => print('Estoy volando');
}

abstract class Caminante{
  void caminar() => print('Estoy caminando');
}

abstract class Nadador{
  void nadar() => print('Estoy Madando');
}

class Delfin extends Manifero with Nadador {
  
}

class Muercielago extends Manifero with Caminante, Volador {
  
}

```

los mixins son complementos que podemos agregar a las clases con la palabra reservada with