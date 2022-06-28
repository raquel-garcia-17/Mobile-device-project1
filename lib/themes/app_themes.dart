import 'package:flutter/material.dart';

class AppThemes {
  static const Color primary = Colors.greenAccent;

  static final ThemeData greenDarkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.greenAccent.shade400,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    )
  );
  static final ThemeData greenLightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.greenAccent.shade700,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    )
  ); 
}