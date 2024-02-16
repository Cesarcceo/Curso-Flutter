import 'package:flutter/material.dart';

class alertScreen extends StatelessWidget {
  const alertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.indigo,
              //   shape: const StadiumBorder(),
              //   elevation: 0,
              // ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  'mostrar alerta',
                  style: TextStyle(fontSize: 20),
                ),
              ))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
