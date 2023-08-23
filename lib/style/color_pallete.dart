import 'package:flutter/material.dart';

class ColorPalette {
  final Color primaryColor;
  final Color accentColor;
  final Color backgroundColor;
  final Color textColor;

  ColorPalette({
    required this.primaryColor,
    required this.accentColor,
    required this.backgroundColor,
    required this.textColor,
  });

  ColorPalette copyWith({
    Color? primaryColor,
    Color? accentColor,
    Color? backgroundColor,
    Color? textColor,
  }) {
    return ColorPalette(
      primaryColor: primaryColor ?? this.primaryColor,
      accentColor: accentColor ?? this.accentColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }

  static ColorPalette get lightTheme => ColorPalette(
        primaryColor: Colors.blue,
        accentColor: Colors.amber,
        backgroundColor: Colors.white,
        textColor: Colors.black,
      );

  static ColorPalette get darkTheme => ColorPalette(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );

  // 여기에 추가적인 컬러값들을 정의하세요.
}
