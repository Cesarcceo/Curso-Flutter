import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blueGrey;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: primary,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.blueGrey[700]);
}
