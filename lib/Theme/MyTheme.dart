import 'package:flutter/material.dart';

class MyTheme {
  static const primaryColor = Color(0xFF0A111C);
  static const secondaryColor = Color(0xFF5F50FF);
  static const Color backGround = Color(0xff666575);
  static const Color white = Color(0xfff2f3f8);
  static const Color black = Color(0xff1e1e2d);
  static const Color green = Color(0xffc4e5c6);
  static const Color gray = Color(0xff83819a);
  static const Color purple = Color(0xff9297d7);
  static const Color red = Color(0xff000000);

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: backGround,
    appBarTheme:const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    )
  );
}
