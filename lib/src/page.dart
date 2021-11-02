import 'package:flutter/material.dart';
import 'package:mvvm_architecture_dark_mode/src/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {

  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: ElevatedButton(
            child: const Text('Button'),
            onPressed: () {
              theme.darkTheme = !theme.darkTheme;
            },
          ),
        )
    );
  }
}

