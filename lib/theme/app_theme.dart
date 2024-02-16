import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 38, 0, 255);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.blueGrey[700]);
}
