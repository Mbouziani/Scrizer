import 'package:flutter/material.dart';

import '../scrizer.dart';

/// A layout wrapper widget that initializes the Scrizer system
/// and sets up the layout constraints for responsive scaling.
///
/// 🚨 This widget **must wrap your `MaterialApp`** (or your root widget)
/// so Scrizer can capture screen dimensions and constraints correctly.
class ScrizerLayout extends StatelessWidget {
  /// The widget tree that will be wrapped with Scrizer layout support.
  final Widget child;

  /// Creates a [ScrizerLayout] wrapper.
  const ScrizerLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Initialize Scrizer with basic MediaQuery data
    Scrizer.initialize(context);

    // Use LayoutBuilder to capture screen constraints
    // and provide them to Scrizer's build method.
    return LayoutBuilder(
      builder: (_, constraints) {
        Scrizer.build(context, constraints);
        return child;
      },
    );
  }
}
