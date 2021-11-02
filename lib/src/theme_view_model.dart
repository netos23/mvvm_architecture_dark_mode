import 'package:flutter/material.dart';
import 'package:mvvm_architecture_dark_mode/src/theme_model.dart';

class ThemeViewModel{
  final bool _darkTheme;

  ThemeViewModel(this._darkTheme);

  ThemeData get theme{
    return _darkTheme ? ThemeModel().darkTheme : ThemeModel().lightTheme;
  }
}