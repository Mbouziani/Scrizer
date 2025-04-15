import 'package:flutter/material.dart';

import 'enums/device_type.dart';
import 'themes/scaler.dart';
import 'themes/typography.dart';

/// The core Scrizer class responsible for initializing and holding
/// screen dimensions, orientation, device type, and responsive utilities.
class Scrizer {
  // Private static variables to store app-wide layout info
  static late double _screenWidth;
  static late double _screenHeight;
  static late Orientation _orientation;
  static late DeviceType _deviceType;
  static late MediaQueryData _mediaQuery;
  static late ScrizerTypography _typography;
  static late ScrizerScaler _scale;

  /// Getters to access screen dimensions, orientation, and utilities
  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static Orientation get orientation => _orientation;
  static DeviceType get deviceType => _deviceType;
  static MediaQueryData get mediaQuery => _mediaQuery;
  static ScrizerTypography get typography => _typography;
  static ScrizerScaler get scale => _scale;

  /// Scales a font size using the responsive typography system
  static double fontSize(double fontSize) => _typography.scale(fontSize);

  /// Initializes layout data from the `MediaQuery` context
  /// Should be called once early in the widget tree (e.g. in ScrizerLayout)
  static void initialize(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    _mediaQuery = mediaQuery;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _orientation = mediaQuery.orientation;
    _deviceType = DeviceType.detect(_screenWidth);
    _typography = ScrizerTypography(_screenWidth);
    _scale = ScrizerScaler(_screenWidth, _screenHeight);
  }

  /// Updates Scrizer values during layout rebuild using layout constraints
  /// Called inside LayoutBuilder for dynamic adaptation (e.g. window resize)
  static void build(BuildContext context, BoxConstraints constraints) {
    final mediaQuery = MediaQuery.of(context);
    _mediaQuery = mediaQuery;

    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;
    _orientation = mediaQuery.orientation;
    _deviceType = DeviceType.detect(_screenWidth);
    _typography = ScrizerTypography(_screenWidth);
    _scale = ScrizerScaler(_screenWidth, _screenHeight);
  }
}
