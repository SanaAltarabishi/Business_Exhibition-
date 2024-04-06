import 'package:flutter/material.dart';


final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor:Colors.brown.shade400,
  // Color.fromARGB(192, 58, 94, 89),
  primaryColorLight: Color.fromARGB(255, 243, 225, 206),
  
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor:Colors.brown.shade300,
  
  // Color.fromARGB(255, 86, 117, 112),
  primaryColorDark: Color.fromARGB(255, 243, 225, 206),


);
class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = darkTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme = _currentTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}



