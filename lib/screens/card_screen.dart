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
            TarjetaPersona2(
                name: 'L.O.V.E.',
                imageUrl:
                    'https://i.pinimg.com/originals/0c/53/4e/0c534e9bfb3fe359de1265aa63792dfa.png'),
            SizedBox(
              height: 10,
            ),
            TarjetaPersona2(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2023/02/25/13/16/ai-generated-7813233_1280.jpg'),
            SizedBox(
              height: 10,
            ),
            TarjetaPersona2(
                imageUrl:
                    'https://news.ubc.ca/wp-content/uploads/2023/08/AdobeStock_559145847.jpeg'),
            SizedBox(
              height: 120,
            ),
          ],
        ));
  }
}
