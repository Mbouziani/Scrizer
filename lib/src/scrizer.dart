import 'package:flutter/material.dart';

import 'enums/device_type.dart';
import 'themes/scaler.dart';
import 'themes/typography.dart';

class Scrizer {
  static late double _screenWidth;
  static late double _screenHeight;
  static late Orientation _orientation;
  static late DeviceType _deviceType;
  static late MediaQueryData _mediaQuery;
  static late ScrizerTypography _typography;
  static late ScrizerScaler _scale;

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static Orientation get orientation => _orientation;
  static DeviceType get deviceType => _deviceType;
  static MediaQueryData get mediaQuery => _mediaQuery;
  static ScrizerTypography get typography => _typography;
  static ScrizerScaler get scale => _scale;

  static double fontSize(double fontSize) => _typography.scale(fontSize);

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

  // Called during layout rebuild
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
