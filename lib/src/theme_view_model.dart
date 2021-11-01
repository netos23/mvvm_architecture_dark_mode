import 'package:flutter/material.dart';
import 'package:mvvm_architecture_dark_mode/src/theme_model.dart';

class ThemeViewModel extends ChangeNotifier{
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }

  ThemeData get theme{
    return _darkTheme ? ThemeModel().darkTheme : ThemeModel().lightTheme;
  }
}