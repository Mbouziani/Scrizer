import 'package:flutter/material.dart';

import '../themes/theme_colors.dart';

/// Extension to easily access the colors defined in ScrizerTheme
/// based on the current theme (light or dark mode).
extension ScrizerColorsExtension on BuildContext {
  /// Get the current [ScrizerColor] based on the current theme mode (light/dark).
  ScrizerColor get scrizerColor => Theme.of(this).extension<ScrizerColor>()!;

  // Get colors based on dark or light mode
  Color get xPrimaryColor => scrizerColor.primaryColor;
  Color get xSecondaryColor => scrizerColor.secondaryColor;
  Color get xUnselectedWidgetColor => scrizerColor.unselectedWidgetColor;
  Color get xColorScheme => scrizerColor.colorScheme;
  Color get xScaffoldBackgroundColor => scrizerColor.scaffoldBackgroundColor;
  Color get xDialogBackgroundColor => scrizerColor.dialogBackgroundColor;
  Color get xHintColor => scrizerColor.hintColor;

  Color get xAppBarPrimaryBackgroundColor =>
      scrizerColor.appBarPrimaryBackgroundColor;
  Color get xAppBarSecondaryBackgroundColor =>
      scrizerColor.appBarSecondaryBackgroundColor;
  Color get xAppBarPrimaryForgroundColor =>
      scrizerColor.appBarPrimaryForgroundColor;
  Color get xAppBarSecondaryForgroundColor =>
      scrizerColor.appBarSecondaryForgroundColor;
  Color get xAppBarBorderColor => scrizerColor.appBarBorderColor;

  Color get xBottomAppBarPrimaryBackgroundColor =>
      scrizerColor.bottomAppBarPrimaryBackgroundColor;
  Color get xBottomAppBarSecondaryBackgroundColor =>
      scrizerColor.bottomAppBarSecondaryBackgroundColor;
  Color get xBottomAppBarPrimaryForgroundColor =>
      scrizerColor.bottomAppBarPrimaryForgroundColor;
  Color get xBottomAppBarSecondaryForgroundColor =>
      scrizerColor.bottomAppBarSecondaryForgroundColor;
  Color get xBottomAppBarBorderColor => scrizerColor.bottomAppBarBorderColor;

  Color get xListTileBackgroundColor => scrizerColor.listTileBackgroundColor;
  Color get xListTileTitleColor => scrizerColor.listTileTitleColor;
  Color get xListTileSubtitleColor => scrizerColor.listTileSubtitleColor;
  Color get xListTileBorderColor => scrizerColor.listTileBorderColor;

  Color get xInputFillColor => scrizerColor.inputFillColor;
  Color get xInputFocusColor => scrizerColor.inputFocusColor;
  Color get xInputHintColor => scrizerColor.inputHintColor;
  Color get xInputIconColor => scrizerColor.inputIconColor;
  Color get xInputLabelColor => scrizerColor.inputLabelColor;

  Color get xIconPrimaryColor => scrizerColor.iconPrimaryColor;
  Color get xIconSecondaryColor => scrizerColor.iconSecondaryColor;

  Color get xTextPrimaryColor => scrizerColor.textPrimaryColor;
  Color get xTextSecondaryColor => scrizerColor.textSecondaryColor;
  Color get xTextTertiaryColor => scrizerColor.textTertiaryColor;
  Color get xTextQuatenaryColor => scrizerColor.textQuatenaryColor;
  Color get xTextLinkColor => scrizerColor.textLinkColor;

  Color get xButtonPrimaryBackgroundColor =>
      scrizerColor.buttonPrimaryBackgroundColor;
  Color get xButtonSecondaryBackgroundColor =>
      scrizerColor.buttonSecondaryBackgroundColor;
  Color get xButtonTertiaryBackgroundColor =>
      scrizerColor.buttonTertiaryBackgroundColor;
  Color get xButtonQuatenaryBackgroundColor =>
      scrizerColor.buttonQuatenaryBackgroundColor;
  Color get xButtonPrimaryForgroundColor =>
      scrizerColor.buttonPrimaryForgroundColor;
  Color get xButtonSecondaryForgroundColor =>
      scrizerColor.buttonSecondaryForgroundColor;
  Color get xButtonTertiaryForgroundColor =>
      scrizerColor.buttonTertiaryForgroundColor;
  Color get xButtonQuatenaryForgroundColor =>
      scrizerColor.buttonQuatenaryForgroundColor;

  Color get xDividerPrimaryColor => scrizerColor.dividerPrimaryColor;
  Color get xDividerSecondaryColor => scrizerColor.dividerSecondaryColor;

  Color get xBottomSheetPrimaryColor => scrizerColor.bottomSheetPrimaryColor;
  Color get xBottomSheetSecondaryColor =>
      scrizerColor.bottomSheetSecondaryColor;

  Color get xProgressIndicatorColor => scrizerColor.progressIndicatorColor;
  Color get xProgressIndicatorTrackColor =>
      scrizerColor.progressIndicatorTrackColor;
  Color get xProgressIndicatorRefreshBackgroundColor =>
      scrizerColor.progressIndicatorRefreshBackgroundColor;
}
