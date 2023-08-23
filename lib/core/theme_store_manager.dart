import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomThemePreferences {
  static const THEME_STATUS = "THEME_STATUS";

  setThemeMode(ThemeMode value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(THEME_STATUS, value.toString());
  }

  Future<ThemeMode> getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final mode = prefs.getString(THEME_STATUS) ?? ThemeMode.system.toString();
    return ThemeMode.values.firstWhere((e) => e.toString() == mode);
  }
}
