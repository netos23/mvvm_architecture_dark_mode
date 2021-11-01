import 'package:flutter/material.dart';

class ThemeModel{

  ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.white
    );
  }

  ThemeData get darkTheme{
    return ThemeData(
        primaryColor: Colors.black
    );
  }
}