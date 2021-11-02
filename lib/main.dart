import 'package:flutter/material.dart';
import 'package:mvvm_architecture_dark_mode/src/theme_provider.dart';
import 'package:mvvm_architecture_dark_mode/src/theme_view_model.dart';
import 'package:mvvm_architecture_dark_mode/src/page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Flutter MVVM Dark Mode',
            theme: ThemeViewModel(value.darkTheme).theme,
            home: const ThemePage(),
          );
        },
      ));
  }
}