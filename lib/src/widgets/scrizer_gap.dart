import 'package:flutter/material.dart';

import '../scrizer.dart';

class ScrizerGap extends StatelessWidget {
  final double size; // Gap size
  final bool isHorizontal; // Horizontal gap
  final bool isVertical; // Vertical gap
  final Color? color; // Optional color for debugging or styling

  const ScrizerGap._({required this.size, this.isHorizontal = false, this.isVertical = false, this.color});

  // Named constructors for horizontal, vertical, and both gaps
  factory ScrizerGap.h(double size) {
    return ScrizerGap._(size: size, isHorizontal: true);
  }

  factory ScrizerGap.v(double size) {
    return ScrizerGap._(size: size, isVertical: true);
  }

  factory ScrizerGap(double size, {Color? color}) {
    return ScrizerGap._(size: size, isHorizontal: true, isVertical: true, color: color);
  }

  @override
  Widget build(BuildContext context) {
    final width = isHorizontal ? Scrizer.scale.width(size) : 0.0;
    final height = isVertical ? Scrizer.scale.height(size) : 0.0;
    // If a color is provided, use Container; otherwise, use SizedBox
    if (color != null) {
      return Container(color: color, width: width, height: height);
    }

    // Return SizedBox if no color is needed (lighter in terms of performance)
    return SizedBox(width: width, height: height);
  }
}
