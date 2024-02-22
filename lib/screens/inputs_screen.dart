import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Cesario',
      'id': '548',
      'email': 'mincesario@gmail',
      'contrasena': '8987',
      'role': 'Adim',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Tu nombre, hijo de mama coco',
                  helperText: 'solo nombres',
                  hintText: 'Maama coco te pregunta tu nombre',
                ),
                const SizedBox(height: 25),
                const CustomInputField(
                  labelText: 'Tu id, hijo de mama coco',
                  helperText: 'solo numeros',
                  hintText: 'Maama coco te pregunta tu id',
                ),
                const SizedBox(height: 25),
                const CustomInputField(
                  labelText: 'Tu correo, hijo de mama coco',
                  helperText: 'solo correos',
                  hintText: 'Maama coco te pregunta tu correo',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 25),
                const CustomInputField(
                  labelText: 'Tu contrasena, hijo de mama coco',
                  hintText: 'Maama coco te pregunta tu contrasena',
                  obcureText: true,
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
