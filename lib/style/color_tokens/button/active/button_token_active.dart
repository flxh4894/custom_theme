import 'package:custom_theme/style/color_pallete.dart';
import 'package:flutter/material.dart';

///
/// Button/Active/Primary
///
class ButtonActivePrimary {
  final Color elements;
  final Color container;

  ButtonActivePrimary({
    required this.elements,
    required this.container,
  });

  factory ButtonActivePrimary.light(ColorPalette p) => ButtonActivePrimary(
        elements: p.grayScale.s0,
        container: p.primary.s30,
      );

  factory ButtonActivePrimary.dark(ColorPalette p) => ButtonActivePrimary(
        elements: p.grayScale.s0,
        container: p.primary.s30,
      );
}

///
/// Button/Active/Secondary
///
class ButtonActiveSecondary {
  final Color elements;
  final Color container;

  ButtonActiveSecondary({
    required this.elements,
    required this.container,
  });

  factory ButtonActiveSecondary.light(ColorPalette p) => ButtonActiveSecondary(
        elements: p.grayScale.s0,
        container: p.primary.s50,
      );

  factory ButtonActiveSecondary.dark(ColorPalette p) => ButtonActiveSecondary(
        elements: p.grayScale.s0,
        container: p.primary.s40,
      );
}

///
/// Button/Active/Ghost
///
class ButtonActiveGhost {
  final Color elements;

  ButtonActiveGhost({
    required this.elements,
  });

  factory ButtonActiveGhost.light(ColorPalette p) => ButtonActiveGhost(
        elements: p.grayScale.s100,
      );

  factory ButtonActiveGhost.dark(ColorPalette p) => ButtonActiveGhost(
        elements: p.grayScale.s0,
      );
}

///
/// Button/Active/Outline
///
class ButtonActiveOutline {
  final Color elements;
  final Color outline;

  ButtonActiveOutline({
    required this.elements,
    required this.outline,
  });

  factory ButtonActiveOutline.light(ColorPalette p) => ButtonActiveOutline(
        elements: p.grayScale.s100,
        outline: p.blackColor.s20,
      );

  factory ButtonActiveOutline.dark(ColorPalette p) => ButtonActiveOutline(
        elements: p.grayScale.s0,
        outline: p.whiteColor.s70,
      );
}
