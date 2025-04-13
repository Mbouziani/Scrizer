import 'package:flutter/material.dart';

import '../scrizer.dart';

class ScrizerLayout extends StatelessWidget {
  const ScrizerLayout({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Scrizer.initialize(context);

    return LayoutBuilder(
      builder: (_, constraints) {
        Scrizer.build(context, constraints);
        return child;
      },
    );
  }
}
