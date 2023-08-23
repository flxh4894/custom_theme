import 'package:custom_theme/core/theme_manager.dart';
import 'package:custom_theme/core/theme_store_manager.dart';
import 'package:custom_theme/style/color_pallete.dart';
import 'package:custom_theme/style/theme.dart';
import 'package:flutter/material.dart';

///
/// Material App builder with custom theme.
///
typedef ThemeBuilder = Widget Function(
  ThemeData light,
  ThemeData dark,
  ThemeMode mode,
);

///
/// Custom theme widget.
///
class CustomTheme extends StatefulWidget {
  /// Default value [ThemeMode.system]
  final ThemeMode initThemeMode;

  /// [builder] function define.
  final ThemeBuilder builder;

  /// [lightTheme] define.
  final ThemeData? lightTheme;

  /// [darkTheme] define.
  final ThemeData? darkTheme;

  final ColorPalette? colorPalette;

  const CustomTheme({
    this.initThemeMode = ThemeMode.system,
    required this.builder,
    this.darkTheme,
    this.lightTheme,
    this.colorPalette,
    super.key,
  });

  /// [of] function define.
  static CustomThemeManager of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedCustomTheme>()!
        .themeManager;
  }

  /// [getThemeMode] function define.
  /// return of [ThemeMode] from shared preferences .
  static Future<ThemeMode> getThemeMode() async {
    return await CustomThemePreferences().getThemeMode();
  }

  @override
  State<CustomTheme> createState() => _CustomThemeState();
}

class _CustomThemeState extends State<CustomTheme> with CustomThemeManager {
  @override
  void initState() {
    initTheme(
      themeMode: widget.initThemeMode,
      light: widget.lightTheme ?? CustomThemeData.light,
      dark: widget.darkTheme ?? CustomThemeData.dark,
      colorPalette: widget.colorPalette,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeMode,
        builder: (context, value, _) {
          return InheritedCustomTheme(
            themeManager: this,
            themeMode: widget.initThemeMode,
            child: widget.builder(
              lightTheme,
              darkTheme,
              value,
            ),
          );
        });
  }
}

class InheritedCustomTheme extends InheritedWidget {
  final ThemeMode themeMode;
  final CustomThemeManager themeManager;

  const InheritedCustomTheme({
    required this.themeMode,
    required this.themeManager,
    super.key,
    required super.child,
  });

  @override
  bool updateShouldNotify(InheritedCustomTheme oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}
