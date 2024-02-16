import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['minecraft', 'Zelda', 'smash bros', 'Metroid'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('listview tipo 1'),
      ),
      body: ListView(children: [
        ...options
            .map((juegos) => ListTile(
                title: Text(juegos),
                trailing: const Icon(Icons.arrow_forward_ios_outlined)))
            .toList(),
      ]),
    );
  }
}
