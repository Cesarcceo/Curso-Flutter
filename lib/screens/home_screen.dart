import 'package:flutter/material.dart';
import 'package:primer_proyecto/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(menuOptions[index].icon),
            title: Text(menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length,
        ));
  }
}
