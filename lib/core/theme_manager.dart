import 'package:custom_theme/core/theme_store_manager.dart';
import 'package:custom_theme/style/color_pallete.dart';
import 'package:custom_theme/style/color_tokens/color_tokens.dart';

import 'package:flutter/material.dart';

mixin CustomThemeManager {
  late final ValueNotifier<ThemeMode> _themeMode;
  late ColorPalette _colorPalette;
  // ThemeData get lightTheme => _lightTheme;
  // ThemeData get darkTheme => _darkTheme;
  ValueNotifier<ThemeMode> get themeMode => _themeMode;
  ColorPalette get colorPalette => _colorPalette;
  ColorTokens get colorTokens => ColorTokens(
        isDark: isDark(),
        cp: _colorPalette,
      );

  final CustomThemePreferences store = CustomThemePreferences();

  void initTheme({
    required ThemeMode themeMode,
    ColorPalette? colorPalette,
  }) {
    _selectColorTokenType(themeMode);
    _colorPalette = colorPalette ?? ColorPalette();
    _themeMode = ValueNotifier(themeMode);
  }

  String getThemeMode() {
    return themeMode.value.toString();
  }

  ///
  /// Set theme mode [Dark].
  ///
  void setDarkTheme() {
    const mode = ThemeMode.dark;
    _selectColorTokenType(mode);
    _themeMode.value = mode;
    store.setThemeMode(mode);
  }

  ///
  /// Set theme mode [Light].
  ///
  void setLightTheme() {
    const mode = ThemeMode.light;
    _selectColorTokenType(mode);
    _themeMode.value = mode;
    store.setThemeMode(mode);
  }

  ///
  /// Set theme mode [System].
  ///
  void setSystemTheme() {
    const mode = ThemeMode.system;
    _selectColorTokenType(mode);
    _themeMode.value = mode;
    store.setThemeMode(mode);
  }

  ///
  /// Choose color pallete by theme mode.
  /// [Ligtht] or [Dark] or [UserCustom]
  ///
  void _selectColorTokenType(ThemeMode mode) {
    // Color Token을 변경하는 용도로 사용함
    // switch (mode) {
    //   case ThemeMode.light:
    //     _colorPalette = _colorPaletteLight;
    //     break;
    //   case ThemeMode.dark:
    //     _colorPalette = _colorPaletteDark;
    //     break;
    //   case ThemeMode.system:
    //     _colorPalette =
    //         WidgetsBinding.instance.platformDispatcher.platformBrightness ==
    //                 Brightness.light
    //             ? _colorPaletteLight
    //             : _colorPaletteDark;
    //     break;
    // }
  }

  ///
  /// Toggle theme mode.
  /// [Light] -> [Dark] -> [System] infinity loop.
  ///
  void toggleThemeMode() {
    final nextModeIndex =
        (_themeMode.value.index + 1) % ThemeMode.values.length;
    final mode = ThemeMode.values[nextModeIndex];
    _selectColorTokenType(mode);
    _themeMode.value = mode;
    store.setThemeMode(_themeMode.value);
  }

  bool isDark() {
    switch (_themeMode.value) {
      case ThemeMode.light:
        return false;
      case ThemeMode.dark:
        return true;
      case ThemeMode.system:
        return WidgetsBinding.instance.platformDispatcher.platformBrightness ==
            Brightness.dark;
    }
  }
}
