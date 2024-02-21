import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value $value');
                },
                validator: (value) {
                  if (value == null) return 'Mama Coco te necesita';
                  return value.length < 5 ? 'minimo de 5 letras' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Maama coco te pregunta tu nombre',
                  labelText: 'Tu nombre, hijo de mama coco',
                  helperText: 'solo nombres',
                  counterText: '10 caracteres',
                  suffixIcon: Icon(Icons.abc),
                  // prefixIcon: Icon(Icons.abc),
                  // icon: Icon(Icons.abc),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.red,
                  )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
