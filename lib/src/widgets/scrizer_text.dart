import 'package:flutter/material.dart';

import '../scrizer.dart';

/// A responsive text widget that scales its font size
/// according to the screen dimensions using Scrizer's scaling logic.
class ScrizerText extends StatelessWidget {
  /// The text to be displayed.
  final String text;

  /// The base font size before scaling.
  final double fontSize;

  /// An optional style to customize the text appearance.
  final TextStyle? style;

  /// Creates a [ScrizerText] widget.
  ///
  /// The [fontSize] is required and will be scaled automatically
  /// using the `Scrizer.fontSize()` method.
  const ScrizerText(this.text, {super.key, required this.fontSize, this.style});

  @override
  Widget build(BuildContext context) {
    // Apply scaling to the font size. If a style is provided,
    // apply the scaled font size to that style. Otherwise,
    // create a new TextStyle with the scaled size.
    final textStyle =
        style?.copyWith(fontSize: Scrizer.fontSize(fontSize)) ??
        TextStyle(fontSize: Scrizer.fontSize(fontSize));

    // Render the text with the final computed style.
    return Text(text, style: textStyle);
  }
}
