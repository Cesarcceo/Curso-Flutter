import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mama Coco'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 175, 127, 54),
              child: Text('MC'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 135,
        backgroundImage: NetworkImage(
            'https://i.pinimg.com/736x/e5/35/a6/e535a67bdeb38819b1a659cfe3548d74.jpg'),
      )),
    );
  }
}
