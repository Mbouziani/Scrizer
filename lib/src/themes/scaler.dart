import 'package:flutter/material.dart';

import '../enums/device_type.dart';

/// A utility class that provides responsive scaling for UI elements
/// like padding, gaps, widths, heights, and icon sizes based on screen size.
class ScrizerScaler {
  /// The current screen width.
  final double screenWidth;

  /// The current screen height.
  final double screenHeight;

  /// Constructor to initialize screen dimensions.
  ScrizerScaler(this.screenWidth, this.screenHeight);

  // ---------- PUBLIC API ----------

  /// Scales icon size based on screen width.
  double icon(double size) => size * _iconScaleFactor();

  /// Scales gap/spacing size based on screen width.
  double gap(double size) => size * _gapScaleFactor();

  /// Scales a horizontal dimension based on screen width.
  double width(double value) => value * _widthScaleFactor();

  /// Scales a vertical dimension based on screen height.
  double height(double value) => value * _heightScaleFactor();

  /// Returns symmetric padding scaled for both horizontal and vertical sides.
  EdgeInsetsDirectional paddingAll(double size) =>
      EdgeInsetsDirectional.symmetric(
        horizontal: width(size),
        vertical: height(size),
      );

  /// Returns symmetric padding with custom vertical (`v`) and horizontal (`h`) values.
  EdgeInsetsDirectional paddingSymmetric({double? v, double? h}) =>
      EdgeInsetsDirectional.symmetric(
        horizontal: h == null ? 0.0 : width(h),
        vertical: v == null ? 0.0 : height(v),
      );

  /// Returns directional padding with optional start, end, top, and bottom values.
  EdgeInsetsDirectional paddingOnly({
    double? s,
    double? t,
    double? e,
    double? b,
  }) => EdgeInsetsDirectional.only(
    start: s == null ? 0.0 : width(s),
    end: e == null ? 0.0 : width(e),
    top: t == null ? 0.0 : height(t),
    bottom: b == null ? 0.0 : height(b),
  );

  // ---------- PRIVATE HELPERS ----------

  /// Calculates a base scale factor based on screen width ranges.
  double _calculateScaleFactor() {
    if (screenWidth < DeviceDimensions.mobileMinWidth) {
      return screenWidth / DeviceDimensions.mobileMinWidth;
    } else if (screenWidth < DeviceDimensions.tabletMinWidth) {
      return screenWidth / DeviceDimensions.mobileMinWidth;
    } else if (screenWidth < DeviceDimensions.laptopMinWidth) {
      return screenWidth / DeviceDimensions.tabletMinWidth;
    } else if (screenWidth < DeviceDimensions.largeMinWidth) {
      return screenWidth / DeviceDimensions.laptopMinWidth;
    } else {
      return screenWidth / DeviceDimensions.largeMinWidth;
    }
  }

  /// Returns a clamped scale factor for icon sizes.
  double _iconScaleFactor() => _calculateScaleFactor().clamp(0.85, 1.2);

  /// Returns a clamped scale factor for gaps/spacers.
  double _gapScaleFactor() => _calculateScaleFactor().clamp(0.8, 1.1);

  /// Returns a clamped scale factor for horizontal (width) scaling.
  double _widthScaleFactor() {
    if (screenWidth < DeviceDimensions.mobileMinWidth) {
      return screenWidth / DeviceDimensions.mobileMinWidth;
    } else {
      return _calculateScaleFactor().clamp(0.9, 1.3);
    }
  }

  /// Returns a clamped scale factor for vertical (height) scaling.
  double _heightScaleFactor() {
    if (screenHeight < 640) {
      return screenHeight / 640;
    } else if (screenHeight < 800) {
      return screenHeight / 800;
    } else {
      return (screenHeight / 900).clamp(0.9, 1.25);
    }
  }
}
