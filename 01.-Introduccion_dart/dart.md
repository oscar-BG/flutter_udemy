# Introduccón a Dart

main es la función que inicializa el código de Dart, esta función puede devolver un tipo de datos, es caso de que no se especifique indica que puede devolve cualquier tipo de dato, pero siempre debe de devolver alguno de ellos

```
main() {
    print('Hola mundo');

    return 0
}
```

En caso de que no queramos regresar ningun tipo de dato, devemos de especificar que nuestra función es de tipo void antes del main.
Por ejempo:

```
void main() {

    // Essto es un comentario
    print('Hola mundo');
}
```

# Tipos de datos

```
void main() {
    // String
    var nombre = 'Tony';
    var apellido = 'Stark';

    String ciudad = 'New york':

    // No se puede cambiar el tipo de dato, se mantien igual en su primera inicialización

    final gustos = 'Pateles';

    // Esto generaria un error
    gustos = 'Refrescos';

    // Se mantiene igual en el momento de compilación, es decir no se puede asignar un valor una vez inicializada
    const tareas = '2'


    // Numeros
    int empleados = 10  // valores enteros
    double salario = 10000.55 // Puntos decimales


    print('Nombre: $nombre')
}
```

## Booleanos y condiciones

los daos booleanos soportan valor de verdadero y falso o/y null
```
void main() {
    bool isActive = true;

    if (isActive) {
        print('Esta activo');
    } else {
        print('Esta inactivo');
    }
}
```

Dentro de la variable de dart podemos especicar a las variable si van aceptar valores nulos o no nulos

```
void main() {

    // Puede tener valores nulos colocamos cuando especificamos el tipo de dato?

    boo? isActive = null

    // Para que no marque error, preguntamos si es null, con el == preguntamos si son iguales

    if(isActive == null) {
        print('Esta activo');
    } else{
        print('Esta inactivo');
    }
}
```

## Tipo de dato, listas

```
void main() {

    // Creamos nuestra lista, el listado empieza desde 0
    List numeros = [1,2,3,4,5,6];

    // Agregar un nuevo valor a la lista
    numeros.add(7);
    // Al ser la lista de tipo generico, va aceptar cualquier tipo de dato
    numeros.add('Manzana')

    // Imprime el numero 1, ya que esta en la posicion 0
    print(numeros[0]);

    // Crear una lista que acepte solo datos numericos

    List<int> cantidad = [1,2,3,4,5];


    // Llamar a un metodo de List

    final num = List.generate(100, (int index) => index)

    //Imprime la lista con 100 elementos del 0 al 99
    print(num)
}
```

## Tipo de dato, Map

```
void main() {
    // Estructura Map<dynamic, dinamic> es decir, tanto la calve como el valor puede ser de cualquier tipo de dato por ejemplo
    Map persona = {
        'nombre': 'Fernando',
        'edad: 35,
        'soltero': false,
        10: 'Numeros'
    };

    // Obtner todos los valores
    print(persona);

    // Obtener uno en especifico

    print(persona['nombre']);  // Salida: 'Fernando'
    print(persona[10]); // Salida: 'Numeros'

    // Especificar el tipo de dato del mapa

    // Indicamos que las llaves son de tipo string mientras que las claves pueden ser de cualquier otro

    Map<String, dynamic> alumno = {
        'nombre': 'Juan',
        'edad': 45,
        'activo': false
    }

    // Agregar un nuevo valor

    alumno.addAll({'semestre': '2'})
}
```