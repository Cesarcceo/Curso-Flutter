import 'package:flutter/material.dart';

class TarjetaPersona2 extends StatelessWidget {
  const TarjetaPersona2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        elevation: 20,
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/0c/53/4e/0c534e9bfb3fe359de1265aa63792dfa.png'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            )
          ],
        ));
  }
}
