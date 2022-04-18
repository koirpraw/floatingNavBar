import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;


  bool get isDarkMode{
    if (themeMode == ThemeMode.system){
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleThemeMode(bool toggleOn){
    themeMode = toggleOn ? ThemeMode.dark :ThemeMode.light;
    notifyListeners();
  }

}

//This is a separate class to set Theme of the project, if separate theme used without provider wont need a separate theme class
 class AppThemes{
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,

    primaryColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8),
      focusColor: Color(0xFFF5F5F5),
    colorScheme: ColorScheme.dark().copyWith(secondary: Colors.lightGreen.shade200),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFF5F5F5),
    primaryColor: Color(0xFFF5F5F5),
    iconTheme: IconThemeData(color: Color(0xFFF6875E), opacity: 0.8),
    focusColor: Colors.grey.shade900,
    colorScheme: ColorScheme.light().copyWith(secondary: Colors.purple.shade200),

  );

 }