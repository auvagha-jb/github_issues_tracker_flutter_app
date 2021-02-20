import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xffecf3f9);
  static const accentColor = Color(0xff7e95a7);

  static ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: primaryColor,
      accentColor: accentColor,
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
