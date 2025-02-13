import 'package:flutter/material.dart';
import 'package:playground/components/my_bar_graph.dart';

class ScreenTest extends StatefulWidget {
  const ScreenTest({super.key});

  @override
  State<ScreenTest> createState() => _ScreenTestState();
}

class _ScreenTestState extends State<ScreenTest> {
  final List<double> expenses = [
    22.41,
    22.312,
    85,
    32.1,
    64.321,
    84.9321,
    12.431,
    9.23,
    1.95,
    57.21,
    73.32,
    12.431,
    9.23,
    1.95,
    57.21,
    73.32,
    12.431,
    9.23,
    1.95,
    57.21,
    73.32,
    12.431,
    9.23,
    1.95,
    57.21,
    73.32,
    12.431,
    9.23,
    1.95,
    57.21,
    73.32,
  ];

  final List<String> expensesTitles = [
    "Nov 2024",
    "Dec 2024",
    "Jan 2025",
    "Feb 202",
    "Mar 2025",
    "Apr 2025",
    "May 2025",
    "Jun 2025",
    "Jul 2025",
    "Aug 2025",
    "Sep 2025"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: MyBarGraph(dataList: expenses, dataTitles: expensesTitles),
        ),
      ),
    );
  }
}
