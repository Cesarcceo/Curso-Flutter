import 'package:flutter/material.dart';

import 'package:primer_proyecto/theme/app_theme.dart';

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
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined,
                        color: AppTheme.primary),
                    title: Text('titulo'),
                    subtitle: Text('texto de relleno'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
