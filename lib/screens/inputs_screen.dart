import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Tu nombre, hijo de mama coco',
                helperText: 'solo nombres',
                hintText: 'Maama coco te pregunta tu nombre',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
