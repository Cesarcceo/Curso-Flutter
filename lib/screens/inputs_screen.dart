import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Cesario',
      'id': '5488987',
      'email': 'mincesario@gmail',
      'password': '8987548',
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
                CustomInputField(
                  labelText: 'Tu nombre, hijo de mama coco',
                  helperText: 'solo nombres',
                  hintText: 'Maama coco te pregunta tu nombre',
                  formProperty: 'nombre',
                  formValues: formValues,
                ),
                const SizedBox(height: 25),
                CustomInputField(
                  labelText: 'Tu id, hijo de mama coco',
                  helperText: 'solo numeros',
                  hintText: 'Maama coco te pregunta tu id',
                  formProperty: 'id',
                  formValues: formValues,
                ),
                const SizedBox(height: 25),
                CustomInputField(
                  labelText: 'Tu correo, hijo de mama coco',
                  helperText: 'solo correos',
                  hintText: 'Maama coco te pregunta tu correo',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 25),
                CustomInputField(
                  labelText: 'Tu contrasena, hijo de mama coco',
                  hintText: 'Maama coco te pregunta tu contrasena',
                  obcureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 25),
                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('Jr. Developer')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
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
