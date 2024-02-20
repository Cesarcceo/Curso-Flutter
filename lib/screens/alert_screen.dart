import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('mama coco te abla'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'hola hijitos, soy mama coco\n *flutter te mira con desprecio*'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'no',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('si'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('mama coco te abla'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(2)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'hola hijitos, soy mama coco\n *flutter te mira con desprecio*'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('cerrar'))
            ],
          );
        });
  }

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
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  'mostrar alerta',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
