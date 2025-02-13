import 'package:flutter/material.dart';
import 'package:playground/components/chart_design.dart';
import 'package:playground/screens/screen_test.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChartPage(),
    );
  }
}
