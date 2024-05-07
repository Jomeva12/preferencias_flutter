import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  late ThemeData currentTheme;

  ThemeProvider({required bool isDarkmode}) {
    currentTheme=isDarkmode ? ThemeData.dark(): ThemeData.light();
  }

  setLighmode(){
    currentTheme=ThemeData.light();
    notifyListeners();
  }
  setDarkmode(){
      currentTheme=ThemeData.dark();
      notifyListeners();
  }
}