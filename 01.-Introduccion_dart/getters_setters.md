# Getters y Setter

```
import 'dart:math' as math;

void main() {
  final cuadrado = new Cuadrado(5);
  
  // print('area: ${cuadrado.lado * cuadrado.lado}');
  
  print('area: ${cuadrado.calculaArea()}');
  print('area get: ${cuadrado.area}');
  
}

class Cuadrado {
  double lado = 0;
  
  Cuadrado(double lado):
    this.lado = lado;
  
  
  // Solo retorna un dato sin recibir parametros
  double get area {
    return this.lado * this.lado;
  }
  
  set area(double valor) {
    this.lado = math.sqrt(valor);
  }
  
  double calculaArea() {
    return this.lado * this.lado;
  }
}

```