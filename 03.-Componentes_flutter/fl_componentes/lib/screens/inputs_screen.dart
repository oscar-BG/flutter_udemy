import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre'   :'',
      'apellido' :'',
      'email'    :'',
      'clave'    :'',
      'rol'      :''
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre de usuario', formProperty: 'nombre', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario',formProperty: 'apellido', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Clave', hintText: 'Ingrese su clave', obscureText: true, formProperty: 'clave', formValues: formValues,),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: (() {
                    // ocultar el teclado en telefono
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    // Imprimir valores del formulario
                    print(formValues);
                  }), 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')))
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

