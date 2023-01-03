import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});


  // Cambiar el estado para que sea dinamico
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Scaffold: Lienzo la cual ya tiene opciones par cargar animaciones
  int contador = 0;

  void increase() {
    contador++;
    setState(() {});
  }
  void decrease() {
    contador--;
    setState(() {});
  }
  void reset() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 =  TextStyle(fontSize: 30);
    

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Caunter Screen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget> [
            const Text('Número de clicks', style: fontSize30),
            Text('$contador', style: fontSize30,)
          ],
        ),
      ),
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children:[
        
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => increaseFn(),
        ),
        
        FloatingActionButton(
          child: const Icon(Icons.replay_sharp),
          onPressed: () => resetFn(),
        ),
        
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}