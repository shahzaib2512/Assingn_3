import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,


  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonColor: Colors.deepPurple,
    bottomAppBarColor: Colors.deepPurple,

  );
}

