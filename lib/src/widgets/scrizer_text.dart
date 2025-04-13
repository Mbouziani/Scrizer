import 'package:flutter/material.dart';

import '../scrizer.dart';

class ScrizerText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextStyle? style;

  const ScrizerText(this.text, {super.key, required this.fontSize, this.style});

  @override
  Widget build(BuildContext context) {
    final textStyle = style?.copyWith(fontSize: Scrizer.fontSize(fontSize)) ?? TextStyle(fontSize: Scrizer.fontSize(fontSize));
    return Text(text, style: textStyle);
  }
}
