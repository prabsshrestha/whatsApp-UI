import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ThemeChanger with ChangeNotifier {
  //initial we have light mode
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
