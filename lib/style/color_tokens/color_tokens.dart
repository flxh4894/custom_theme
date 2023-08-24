import 'package:custom_theme/style/color_pallete.dart';
import 'package:custom_theme/style/color_tokens/button/button_token.dart';
import 'package:custom_theme/style/color_tokens/state_overlay.dart';

class ColorTokens {
  final ColorPalette _cp;
  final bool _isDark;

  StateOverlay get stateOverlay =>
      _isDark ? StateOverlay.dark(_cp) : StateOverlay.light(_cp);

  ButtonTokens get buttonTokens => ButtonTokens(
        isDark: _isDark,
        cp: _cp,
      );

  ColorTokens({
    required bool isDark,
    required ColorPalette cp,
  })  : _isDark = isDark,
        _cp = cp;
}
