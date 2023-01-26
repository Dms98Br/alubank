// ignore_for_file: non_constant_identifier_names

import 'package:alubank/themes/theme_color.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  primarySwatch: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
  ),
);
