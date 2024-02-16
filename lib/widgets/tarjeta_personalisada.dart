import 'package:flutter/material.dart';

import 'package:primer_proyecto/theme/app_theme.dart';

class TarjetaPersonalisada extends StatelessWidget {
  const TarjetaPersonalisada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('titulo'),
            subtitle: Text('texto de relleno'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('OK'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
