import 'package:custom_theme/style/base_color/black_color.dart';
import 'package:custom_theme/style/base_color/gray_scale.dart';
import 'package:custom_theme/style/base_color/primary_color.dart';
import 'package:custom_theme/style/base_color/white_color.dart';

class ColorPalette {
  final PrimaryColor primary;
  final GrayScale grayScale;
  final WhiteColor whiteColor;
  final BlackColor blackColor;

  ColorPalette({
    PrimaryColor? primary,
    GrayScale? grayScale,
    WhiteColor? whiteColor,
    BlackColor? blackColor,
  })  : primary = primary ?? PrimaryColor(),
        grayScale = grayScale ?? GrayScale(),
        whiteColor = whiteColor ?? WhiteColor(),
        blackColor = blackColor ?? BlackColor();

  ColorPalette copyWith({
    PrimaryColor? primary,
    GrayScale? grayScale,
    WhiteColor? whiteColor,
    BlackColor? blackColor,
  }) {
    return ColorPalette(
      primary: primary ?? this.primary,
      grayScale: grayScale ?? this.grayScale,
      whiteColor: whiteColor ?? this.whiteColor,
      blackColor: blackColor ?? this.blackColor,
    );
  }

  // static ColorPalette get lightTheme => ColorPalette(
  //       primaryColor: Colors.blue,
  //       accentColor: Colors.amber,
  //       backgroundColor: Colors.white,
  //       textColor: Colors.black,
  //       primary: PrimaryColor(),
  //       grayScale: GrayScale(),
  //     );

  // static ColorPalette get darkTheme => ColorPalette(
  //       primaryColor: Colors.red,
  //       accentColor: Colors.redAccent,
  //       backgroundColor: Colors.black,
  //       textColor: Colors.white,
  //       primary: PrimaryColor(),
  //       grayScale: GrayScale(),
  //     );

  // 여기에 추가적인 컬러값들을 정의하세요.
}
