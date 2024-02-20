import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 68, 87, 97);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(
      color: primary,
    ),
    //tema para los textBottons
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    //tema para los floatingAccionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    //tema para los Elevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: primary,
      shape: const StadiumBorder(),
      elevation: 0,
    )),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.blueGrey[700]);
}
