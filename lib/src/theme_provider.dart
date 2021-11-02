import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    notifyListeners();
  }
}
