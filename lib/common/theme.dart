import 'package:flutter/material.dart';

final appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepOrange,
    primary: Colors.deepOrange,
    secondary: Colors.deepOrangeAccent,
  ),
  useMaterial3: true,

  appBarTheme: AppBarTheme(
    backgroundColor:
        Colors.deepOrange, // Set the AppBar background color to primary
    foregroundColor: Colors.white, // Set the AppBar text/icon color
  ),
  textTheme: TextTheme(
    displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 16),
  ),
);
