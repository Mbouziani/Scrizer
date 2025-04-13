import 'package:flutter/material.dart';

import '../enums/device_type.dart';

class ScrizerScaler {
  final double screenWidth;
  final double screenHeight;

  ScrizerScaler(this.screenWidth, this.screenHeight);

  //
  double icon(double size) => size * _iconScaleFactor();
  double gap(double size) => size * _gapScaleFactor();
  double width(double value) => value * _widthScaleFactor();
  double height(double value) => value * _heightScaleFactor();
  //
  EdgeInsetsDirectional paddingAll(double size) => EdgeInsetsDirectional.symmetric(horizontal: width(size), vertical: height(size));
  EdgeInsetsDirectional paddingSymmetric({double? v, double? h}) =>
      EdgeInsetsDirectional.symmetric(horizontal: h == null ? 0.0 : width(h), vertical: v == null ? 0.0 : height(v));
  EdgeInsetsDirectional paddingOnly({double? s, double? t, double? e, double? b}) => EdgeInsetsDirectional.only(
    start: s == null ? 0.0 : width(s),
    end: e == null ? 0.0 : width(e),
    top: t == null ? 0.0 : height(t),
    bottom: b == null ? 0.0 : height(b),
  );

  //
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

  double _iconScaleFactor() => _calculateScaleFactor().clamp(0.85, 1.2);
  double _gapScaleFactor() => _calculateScaleFactor().clamp(0.8, 1.1);

  // Scaling based on screen width

  double _widthScaleFactor() {
    if (screenWidth < DeviceDimensions.mobileMinWidth) {
      return screenWidth / DeviceDimensions.mobileMinWidth;
    } else {
      return _calculateScaleFactor().clamp(0.9, 1.3);
    }
  }

  // Scaling based on screen height
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
