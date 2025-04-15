import 'package:flutter/material.dart';

import '../themes/theme_colors.dart';

/// Extension to easily access the colors defined in ScrizerTheme
/// based on the current theme (light or dark mode).
extension ScrizerColorsExtension on BuildContext {
  /// Get the current [ScrizerTheme] based on the current theme mode (light/dark).
  ScrizerTheme get scrizerTheme => Theme.of(this).extension<ScrizerTheme>()!;

  // Get colors based on dark or light mode
  Color get kPrimaryColor => scrizerTheme.darkColor.primaryColor;
  Color get kSecondaryColor => scrizerTheme.darkColor.secondaryColor;
  Color get kUnselectedWidgetColor => scrizerTheme.darkColor.unselectedWidgetColor;
  Color get kColorScheme => scrizerTheme.darkColor.colorScheme;
  Color get kScaffoldBackgroundColor => scrizerTheme.darkColor.scaffoldBackgroundColor;
  Color get kDialogBackgroundColor => scrizerTheme.darkColor.dialogBackgroundColor;
  Color get kHintColor => scrizerTheme.darkColor.hintColor;

  Color get kAppBarPrimaryBackgroundColor => scrizerTheme.darkColor.appBarPrimaryBackgroundColor;
  Color get kAppBarSecondaryBackgroundColor => scrizerTheme.darkColor.appBarSecondaryBackgroundColor;
  Color get kAppBarPrimaryForgroundColor => scrizerTheme.darkColor.appBarPrimaryForgroundColor;
  Color get kAppBarSecondaryForgroundColor => scrizerTheme.darkColor.appBarSecondaryForgroundColor;
  Color get kAppBarBorderColor => scrizerTheme.darkColor.appBarBorderColor;

  Color get kBottomAppBarPrimaryBackgroundColor => scrizerTheme.darkColor.bottomAppBarPrimaryBackgroundColor;
  Color get kBottomAppBarSecondaryBackgroundColor => scrizerTheme.darkColor.bottomAppBarSecondaryBackgroundColor;
  Color get kBottomAppBarPrimaryForgroundColor => scrizerTheme.darkColor.bottomAppBarPrimaryForgroundColor;
  Color get kBottomAppBarSecondaryForgroundColor => scrizerTheme.darkColor.bottomAppBarSecondaryForgroundColor;
  Color get kBottomAppBarBorderColor => scrizerTheme.darkColor.bottomAppBarBorderColor;

  Color get kListTileBackgroundColor => scrizerTheme.darkColor.listTileBackgroundColor;
  Color get kListTileTitleColor => scrizerTheme.darkColor.listTileTitleColor;
  Color get kListTileSubtitleColor => scrizerTheme.darkColor.listTileSubtitleColor;
  Color get kListTileBorderColor => scrizerTheme.darkColor.listTileBorderColor;

  Color get kInputFillColor => scrizerTheme.darkColor.inputFillColor;
  Color get kInputFocusColor => scrizerTheme.darkColor.inputFocusColor;
  Color get kInputHintColor => scrizerTheme.darkColor.inputHintColor;
  Color get kInputIconColor => scrizerTheme.darkColor.inputIconColor;
  Color get kInputLabelColor => scrizerTheme.darkColor.inputLabelColor;

  Color get kIconPrimaryColor => scrizerTheme.darkColor.iconPrimaryColor;
  Color get kIconSecondaryColor => scrizerTheme.darkColor.iconSecondaryColor;

  Color get kTextPrimaryColor => scrizerTheme.darkColor.textPrimaryColor;
  Color get kTextSecondaryColor => scrizerTheme.darkColor.textSecondaryColor;
  Color get kTextTertiaryColor => scrizerTheme.darkColor.textTertiaryColor;
  Color get kTextQuatenaryColor => scrizerTheme.darkColor.textQuatenaryColor;
  Color get kTextLinkColor => scrizerTheme.darkColor.textLinkColor;

  Color get kButtonPrimaryBackgroundColor => scrizerTheme.darkColor.buttonPrimaryBackgroundColor;
  Color get kButtonSecondaryBackgroundColor => scrizerTheme.darkColor.buttonSecondaryBackgroundColor;
  Color get kButtonTertiaryBackgroundColor => scrizerTheme.darkColor.buttonTertiaryBackgroundColor;
  Color get kButtonQuatenaryBackgroundColor => scrizerTheme.darkColor.buttonQuatenaryBackgroundColor;
  Color get kButtonPrimaryForgroundColor => scrizerTheme.darkColor.buttonPrimaryForgroundColor;
  Color get kButtonSecondaryForgroundColor => scrizerTheme.darkColor.buttonSecondaryForgroundColor;
  Color get kButtonTertiaryForgroundColor => scrizerTheme.darkColor.buttonTertiaryForgroundColor;
  Color get kButtonQuatenaryForgroundColor => scrizerTheme.darkColor.buttonQuatenaryForgroundColor;

  Color get kDividerPrimaryColor => scrizerTheme.darkColor.dividerPrimaryColor;
  Color get kDividerSecondaryColor => scrizerTheme.darkColor.dividerSecondaryColor;

  Color get kBottomSheetPrimaryColor => scrizerTheme.darkColor.bottomSheetPrimaryColor;
  Color get kBottomSheetSecondaryColor => scrizerTheme.darkColor.bottomSheetSecondaryColor;

  Color get kProgressIndicatorColor => scrizerTheme.darkColor.progressIndicatorColor;
  Color get kProgressIndicatorTrackColor => scrizerTheme.darkColor.progressIndicatorTrackColor;
  Color get kProgressIndicatorRefreshBackgroundColor => scrizerTheme.darkColor.progressIndicatorRefreshBackgroundColor;
}
