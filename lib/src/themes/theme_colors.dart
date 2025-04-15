import 'package:flutter/material.dart';

/// A theme configuration class for customizing the visual design
/// of widgets using the Scrizer framework.
class ScrizerTheme {
  /// Whether to use Material 3 styling throughout the app.
  final bool useMaterial3;

  /// The primary font family to be used in text styling.
  final String fontFamily;

  /// The fallback font family used when the primary is unavailable.
  final String fontFamilyFallback;

  final ScrizerColor darkColor;
  final ScrizerColor lightColor;

  ScrizerTheme({required this.useMaterial3, required this.fontFamily, required this.fontFamilyFallback, required this.darkColor, required this.lightColor});
}

/// A theme configuration class for customizing the visual design
/// of widgets using the Scrizer framework.
class ScrizerColor {
  /// The main color used throughout the app (brand color).
  final Color primaryColor;

  /// The second color used throughout the app (sub brand color).
  final Color secondaryColor;

  /// The color used for unselected widgets like toggles or tabs.
  final Color unselectedWidgetColor;

  /// The primary color scheme used in the app.
  final Color colorScheme;

  /// Background color for the scaffold.
  final Color scaffoldBackgroundColor;

  /// Background color for dialogs.
  final Color dialogBackgroundColor;

  /// Color used for generic hints and placeholders.
  final Color hintColor;

  /// Primary background color for the AppBar.
  final Color appBarPrimaryBackgroundColor;

  /// Secondary background color for the AppBar.
  final Color appBarSecondaryBackgroundColor;

  /// Foreground color (e.g., title, icons) for the primary AppBar.
  final Color appBarPrimaryForgroundColor;

  /// Foreground color for the secondary AppBar.
  final Color appBarSecondaryForgroundColor;

  /// Border color for the AppBar.
  final Color appBarBorderColor;

  /// Primary background color for the BottomAppBar.
  final Color bottomAppBarPrimaryBackgroundColor;

  /// Secondary background color for the BottomAppBar.
  final Color bottomAppBarSecondaryBackgroundColor;

  /// Foreground color for the primary BottomAppBar.
  final Color bottomAppBarPrimaryForgroundColor;

  /// Foreground color for the secondary BottomAppBar.
  final Color bottomAppBarSecondaryForgroundColor;

  /// Border color for the BottomAppBar.
  final Color bottomAppBarBorderColor;

  /// Background color for ListTile widgets.
  final Color listTileBackgroundColor;

  /// Title text color for ListTile.
  final Color listTileTitleColor;

  /// Subtitle text color for ListTile.
  final Color listTileSubtitleColor;

  /// Border color used around ListTile widgets.
  final Color listTileBorderColor;

  /// Fill color for input fields (e.g., TextFormField).
  final Color inputFillColor;

  /// Color used to indicate input focus.
  final Color inputFocusColor;

  /// Hint text color in input fields.
  final Color inputHintColor;

  /// Icon color inside input fields.
  final Color inputIconColor;

  /// Label text color in input fields.
  final Color inputLabelColor;

  /// Primary icon color used across the app.
  final Color iconPrimaryColor;

  /// Secondary icon color used for less prominent icons.
  final Color iconSecondaryColor;

  /// Primary text color.
  final Color textPrimaryColor;

  /// Secondary text color.
  final Color textSecondaryColor;

  /// Tertiary text color, usually for hints or less important text.
  final Color textTertiaryColor;

  /// Quatenary text color for lowest priority text.
  final Color textQuatenaryColor;

  /// Color used for hyperlinks.
  final Color textLinkColor;

  /// Background color for primary buttons.
  final Color buttonPrimaryBackgroundColor;

  /// Background color for secondary buttons.
  final Color buttonSecondaryBackgroundColor;

  /// Background color for tertiary buttons.
  final Color buttonTertiaryBackgroundColor;

  /// Background color for quaternary buttons.
  final Color buttonQuatenaryBackgroundColor;

  /// Foreground color for primary buttons.
  final Color buttonPrimaryForgroundColor;

  /// Foreground color for secondary buttons.
  final Color buttonSecondaryForgroundColor;

  /// Foreground color for tertiary buttons.
  final Color buttonTertiaryForgroundColor;

  /// Foreground color for quaternary buttons.
  final Color buttonQuatenaryForgroundColor;

  /// Primary color for dividers.
  final Color dividerPrimaryColor;

  /// Secondary color for dividers.
  final Color dividerSecondaryColor;

  /// Primary background color for bottom sheets.
  final Color bottomSheetPrimaryColor;

  /// Secondary background color for bottom sheets.
  final Color bottomSheetSecondaryColor;

  /// Color of the main progress indicator.
  final Color progressIndicatorColor;

  /// Color of the track behind a progress indicator.
  final Color progressIndicatorTrackColor;

  /// Background color for refresh indicators (pull-to-refresh).
  final Color progressIndicatorRefreshBackgroundColor;

  /// Creates a new instance of [ScrizerTheme] with all required styling options.
  const ScrizerColor({
    required this.primaryColor,
    required this.secondaryColor,
    required this.unselectedWidgetColor,
    required this.colorScheme,
    required this.scaffoldBackgroundColor,
    required this.dialogBackgroundColor,
    required this.hintColor,
    required this.appBarPrimaryBackgroundColor,
    required this.appBarSecondaryBackgroundColor,
    required this.appBarPrimaryForgroundColor,
    required this.appBarSecondaryForgroundColor,
    required this.appBarBorderColor,
    required this.bottomAppBarPrimaryBackgroundColor,
    required this.bottomAppBarSecondaryBackgroundColor,
    required this.bottomAppBarPrimaryForgroundColor,
    required this.bottomAppBarSecondaryForgroundColor,
    required this.bottomAppBarBorderColor,
    required this.listTileBackgroundColor,
    required this.listTileTitleColor,
    required this.listTileSubtitleColor,
    required this.listTileBorderColor,
    required this.inputFillColor,
    required this.inputFocusColor,
    required this.inputHintColor,
    required this.inputIconColor,
    required this.inputLabelColor,
    required this.iconPrimaryColor,
    required this.iconSecondaryColor,
    required this.textPrimaryColor,
    required this.textSecondaryColor,
    required this.textTertiaryColor,
    required this.textQuatenaryColor,
    required this.textLinkColor,
    required this.buttonPrimaryBackgroundColor,
    required this.buttonSecondaryBackgroundColor,
    required this.buttonTertiaryBackgroundColor,
    required this.buttonQuatenaryBackgroundColor,
    required this.buttonPrimaryForgroundColor,
    required this.buttonSecondaryForgroundColor,
    required this.buttonTertiaryForgroundColor,
    required this.buttonQuatenaryForgroundColor,
    required this.dividerPrimaryColor,
    required this.dividerSecondaryColor,
    required this.bottomSheetPrimaryColor,
    required this.bottomSheetSecondaryColor,
    required this.progressIndicatorColor,
    required this.progressIndicatorTrackColor,
    required this.progressIndicatorRefreshBackgroundColor,
  });
}
