import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class cardScreen extends StatelessWidget {
  const cardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('card widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          children: const [
            TarjetaPersonalisada(),
            SizedBox(
              height: 7,
            ),
            TarjetaPersona2(),
          ],
        ));
  }
}
