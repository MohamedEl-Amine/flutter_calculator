import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(36, 52, 65, 1),
    colorScheme: const ColorScheme.dark(),
    primaryColor: Colors.orange,
  );

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color.fromARGB(248, 252, 252, 252),
      colorScheme: const ColorScheme.light(),
      primaryColor: Colors.white,
      secondaryHeaderColor: Colors.white);
}
