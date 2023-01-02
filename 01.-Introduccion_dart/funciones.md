# Funciones 

```
// Creación de una función
tipo_de_retorno nombre_funcion() {

}

// Ininicaliza con la funcion padre

void main() {

    final nombre = 'Fernando';

    //Llamamos a una funcion y enviamos argumento
    saludar(nombre)

    // Lamamos funcion 
    ocupacion()
}

// Creación de una función y recibe parametro

void saludar(String nombre) {
    print('Hola mundo $nombre');
}


// Creamos una función que tiene como parametro opcionales, es decir que no es obligatorio

void ocupacion([String ocupacion = 'No hay']) {
    print('Ocupacion: {ocipacion} ')
}


// funcion
// Creamos una función con parametros requeridos, y podemos enviar los paramentros sin importar el orden.

void saludar2({required String nombre = 'Oscar', required String apellido = 'Bautista'}){

}
```