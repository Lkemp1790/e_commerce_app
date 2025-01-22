import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple, // Choose your desired seed color
    brightness: Brightness.light,
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple, // Use same seed color for consistency
    brightness: Brightness.dark,
  ),
);