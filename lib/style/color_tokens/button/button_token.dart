import 'package:custom_theme/style/color_pallete.dart';
import 'package:custom_theme/style/color_tokens/button/active/button_token_active.dart';
import 'package:custom_theme/style/color_tokens/button/button_disabled.dart';

///
/// Button Colors Area
///
class ButtonTokens {
  final ColorPalette _cp;
  final bool _isDark;

  ButtonActivePrimary get activePrimary =>
      _isDark ? ButtonActivePrimary.dark(_cp) : ButtonActivePrimary.light(_cp);

  ButtonActiveSecondary get activeSecondary => _isDark
      ? ButtonActiveSecondary.dark(_cp)
      : ButtonActiveSecondary.light(_cp);

  ButtonActiveGhost get activeGhost =>
      _isDark ? ButtonActiveGhost.dark(_cp) : ButtonActiveGhost.light(_cp);

  ButtonActiveDisabled get activeDisabled => _isDark
      ? ButtonActiveDisabled.dark(_cp)
      : ButtonActiveDisabled.light(_cp);

  ButtonTokens({
    required bool isDark,
    required ColorPalette cp,
  })  : _isDark = isDark,
        _cp = cp;
}
