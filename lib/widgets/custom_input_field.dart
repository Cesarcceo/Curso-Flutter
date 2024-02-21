import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      decoration: InputDecoration(
        hintText: hintText, //'Maama coco te pregunta tu nombre',
        labelText: labelText, //'Tu nombre, hijo de mama coco',
        helperText: helperText, //'solo nombres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // counterText: '10 caracteres',
        // prefixIcon: Icon(Icons.abc),
        // focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(
        //   color: Colors.red,
        // )),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(8),
        //       topRight: Radius.circular(8)),
        // ),
      ),
    );
  }
}
