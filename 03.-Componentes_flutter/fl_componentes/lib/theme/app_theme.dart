import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    // AppBar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // Fondo
    scaffoldBackgroundColor: Colors.white,

    // textButtonTheme
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),

    // floatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
      )
    )
  );
}