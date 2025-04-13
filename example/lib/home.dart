import 'package:flutter/material.dart';
import 'package:scrizer/scrizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar", style: Scrizer.typography.titleSmall)),
      body: SingleChildScrollView(
        padding: Scrizer.scale.paddingAll(16),
        child: Column(
          children: [
            Icon(Icons.home_rounded, size: Scrizer.scale.icon(24)),
            Container(color: Colors.blue, width: Scrizer.scale.width(100), height: Scrizer.scale.height(100)),
            Text("Abcd 1234", style: Scrizer.typography.displayLarge),
            Text("Abcd 1234", style: Scrizer.typography.displayMedium),
            Text("Abcd 1234", style: Scrizer.typography.displaySmall),
            Text("Abcd 1234", style: Scrizer.typography.headlineLarge),
            Text("Abcd 1234", style: Scrizer.typography.headlineMedium),
            Text("Abcd 1234", style: Scrizer.typography.headlineSmall),
            Text("Abcd 1234", style: Scrizer.typography.titleLarge),
            Text("Abcd 1234", style: Scrizer.typography.titleMedium),
            Text("Abcd 1234", style: Scrizer.typography.titleSmall),
            Text("Abcd 1234", style: Scrizer.typography.bodyLarge),
            Text("Abcd 1234", style: Scrizer.typography.bodyMedium),
            Text("Abcd 1234", style: Scrizer.typography.bodySmall),
            Text("Abcd 1234", style: Scrizer.typography.labelLarge),
            Text("Abcd 1234", style: Scrizer.typography.labelMedium),
            Text("Abcd 1234", style: Scrizer.typography.labelSmall),
          ],
        ),
      ),
    );
  }
}
