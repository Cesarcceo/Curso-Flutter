import 'package:flutter/material.dart';
import 'package:primer_proyecto/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.access_time_outlined),
            title: const Text('nombre de ruta'),
            onTap: () {
              Navigator.pushNamed(context, 'card');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length,
        ));
  }
}
