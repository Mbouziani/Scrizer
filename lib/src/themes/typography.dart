import 'package:flutter/material.dart';

import '../enums/device_type.dart';

/// A responsive typography system that adapts font sizes based on screen width.
/// Used by the Scrizer core to provide scalable and consistent text styles.
class ScrizerTypography {
  final double screenWidth;

  /// Initializes with the screen width, passed from Scrizer.
  ScrizerTypography(this.screenWidth);

  /// Dynamically scales the given [fontSize] based on device width.
  /// Ensures consistent reading experience across different screen sizes.
  double scale(double fontSize) {
    double scaleFactor;

    if (screenWidth < DeviceDimensions.mobileMinWidth) {
      // Very small screens
      scaleFactor = (screenWidth / DeviceDimensions.mobileMinWidth).clamp(
        0.75,
        1.0,
      );
    } else if (screenWidth < DeviceDimensions.tabletMinWidth) {
      // Phones
      scaleFactor = screenWidth / DeviceDimensions.mobileMinWidth;
    } else if (screenWidth < DeviceDimensions.laptopMinWidth) {
      // Tablets
      scaleFactor = screenWidth / DeviceDimensions.tabletMinWidth;
    } else if (screenWidth < DeviceDimensions.largeMinWidth) {
      // Laptops
      scaleFactor = screenWidth / DeviceDimensions.laptopMinWidth;
    } else {
      // Large screens (desktop, TVs, etc.)
      scaleFactor = 1.3;
    }

    return (fontSize * scaleFactor).clamp(8.0, double.infinity);
  }

  /// Returns a full [TextTheme] using responsive styles
  TextTheme get textTheme => TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );

  // Display styles
  TextStyle get displayLarge =>
      TextStyle(fontSize: scale(64), fontWeight: FontWeight.bold);
  TextStyle get displayMedium =>
      TextStyle(fontSize: scale(48), fontWeight: FontWeight.bold);
  TextStyle get displaySmall =>
      TextStyle(fontSize: scale(36), fontWeight: FontWeight.bold);

  // Headline styles
  TextStyle get headlineLarge =>
      TextStyle(fontSize: scale(32), fontWeight: FontWeight.w600);
  TextStyle get headlineMedium =>
      TextStyle(fontSize: scale(28), fontWeight: FontWeight.w600);
  TextStyle get headlineSmall =>
      TextStyle(fontSize: scale(24), fontWeight: FontWeight.w600);

  // Title styles
  TextStyle get titleLarge =>
      TextStyle(fontSize: scale(20), fontWeight: FontWeight.w500);
  TextStyle get titleMedium =>
      TextStyle(fontSize: scale(18), fontWeight: FontWeight.w500);
  TextStyle get titleSmall =>
      TextStyle(fontSize: scale(16), fontWeight: FontWeight.w500);

  // Body styles
  TextStyle get bodyLarge =>
      TextStyle(fontSize: scale(16), fontWeight: FontWeight.w400);
  TextStyle get bodyMedium =>
      TextStyle(fontSize: scale(14), fontWeight: FontWeight.w400);
  TextStyle get bodySmall =>
      TextStyle(fontSize: scale(12), fontWeight: FontWeight.w400);

  // Label styles
  TextStyle get labelLarge =>
      TextStyle(fontSize: scale(14), fontWeight: FontWeight.w500);
  TextStyle get labelMedium =>
      TextStyle(fontSize: scale(12), fontWeight: FontWeight.w500);
  TextStyle get labelSmall =>
      TextStyle(fontSize: scale(10), fontWeight: FontWeight.w500);

  // Custom text styles
  TextStyle get caption =>
      TextStyle(fontSize: scale(12), fontWeight: FontWeight.w400);
  TextStyle get tag =>
      TextStyle(fontSize: scale(10), fontWeight: FontWeight.bold);
  TextStyle get chip =>
      TextStyle(fontSize: scale(13), fontStyle: FontStyle.italic);
  TextStyle get button =>
      TextStyle(fontSize: scale(13), fontStyle: FontStyle.italic);

  TextStyle get overline => TextStyle(
    fontSize: scale(10),
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
  );

  TextStyle get helper => TextStyle(
    fontSize: scale(11),
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
  );

  TextStyle get error => TextStyle(
    fontSize: scale(12),
    fontWeight: FontWeight.w500,
    color: Colors.red,
  );

  TextStyle get link => TextStyle(
    fontSize: scale(14),
    fontWeight: FontWeight.w400,
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  TextStyle get quote =>
      TextStyle(fontSize: scale(14), fontStyle: FontStyle.italic);
  TextStyle get price =>
      TextStyle(fontSize: scale(16), fontWeight: FontWeight.w600);
}
