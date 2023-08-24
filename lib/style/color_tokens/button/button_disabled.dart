import 'package:custom_theme/style/color_pallete.dart';
import 'package:flutter/material.dart';

///
/// Button/Disabled
///
class ButtonActiveDisabled {
  final Color elements;
  final Color container;

  ButtonActiveDisabled({
    required this.elements,
    required this.container,
  });

  factory ButtonActiveDisabled.light(ColorPalette p) => ButtonActiveDisabled(
        elements: p.grayScale.s50,
        container: p.blackColor.s20,
      );

  factory ButtonActiveDisabled.dark(ColorPalette p) => ButtonActiveDisabled(
        elements: p.grayScale.s95,
        container: p.whiteColor.s20,
      );
}
