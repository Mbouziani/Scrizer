import 'package:flutter/material.dart';
import 'package:scrizer/scrizer.dart';
import 'package:scrizer_example/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScrizerLayout(child: MaterialApp(home: HomeScreen()));
  }
}
