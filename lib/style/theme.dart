import 'package:flutter/material.dart';

const fontFamily = "Pretendard";

class CustomThemeData {
  static ThemeData get light => ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        splashColor: Colors.transparent,
        fontFamily: fontFamily,
        textTheme: CustomTextTheme.textTheme,
      );

  static ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        splashColor: Colors.transparent,
        fontFamily: fontFamily,
        textTheme: CustomTextTheme.textTheme,
      );
}

class CustomTextTheme {
  static get textTheme => const TextTheme(
        displayLarge: TextStyle(
          fontSize: 56,
          height: 64 / 56,
        ),
        displayMedium: TextStyle(
          fontSize: 44,
          height: 52 / 44,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          height: 44 / 36,
        ),
        headlineLarge: TextStyle(
          fontSize: 32,
          height: 40 / 32,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          height: 36 / 28,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          height: 32 / 24,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          height: 28 / 22,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          height: 24 / 18,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          height: 24 / 16,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          height: 20 / 14,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          height: 16 / 12,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          height: 20 / 14,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          height: 16 / 12,
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          height: 14 / 10,
        ),
      );
}

extension TextThemeExtension on TextTheme {
  TextStyle get displayLargeBold =>
      displayLarge!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get displayMediumBold =>
      displayMedium!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get displaySmallBold =>
      displaySmall!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get headlineLargeBold =>
      headlineLarge!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get headlineMediumBold =>
      headlineMedium!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get headlineSmallBold =>
      headlineSmall!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get titleLargeBold =>
      titleLarge!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get titleMediumBold =>
      titleMedium!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get bodyLargeBold =>
      bodyLarge!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get bodyLargeBoldUnderlined => bodyLarge!.copyWith(
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
      );
  TextStyle get bodyMediumBold =>
      bodyMedium!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get bodyMediumBoldUnderlined => bodyMedium!.copyWith(
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
      );
  TextStyle get bodySmallBold =>
      bodySmall!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get labelLargeBold =>
      labelLarge!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get labelMediumBold =>
      labelMedium!.copyWith(fontWeight: FontWeight.w700);
  TextStyle get labelSmallBold =>
      labelSmall!.copyWith(fontWeight: FontWeight.w700);
}
