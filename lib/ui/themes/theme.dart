import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xffECF3F9);//Search bar background
  static const accentColor = Color(0xff7E95A7);//Search bar icons color
  static const backgroundColor = Color(0xffEDF2F8);//Alternative: ECF3F9
  static const buttonColor = Color(0xff3180E9);
  static const tagColor = Color(0xffEA984E);
  static const iconColor = Color(0xff828282);

  //Card colors
  static const filterRowColor = Color(0xff4E7B9A);
  static const cardBodyColor = Color(0xff323838);

  static ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: primaryColor,
      accentColor: accentColor,
      backgroundColor: backgroundColor,
      buttonColor: buttonColor,
      // This makes the visual density adapt to the platform that you run
      // the app on. For desktop platforms, the controls will be smaller and
      // closer together (more dense) than on mobile platforms.
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
