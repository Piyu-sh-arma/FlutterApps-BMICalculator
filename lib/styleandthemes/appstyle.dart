import 'package:flutter/material.dart';

class AppStyleSetup {
  static ThemeData getThemeData() {
    return ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
    );
  }
}
