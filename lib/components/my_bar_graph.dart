import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:playground/components/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  const MyBarGraph(
      {super.key, required this.dataList, required this.dataTitles});

  final List<double> dataList;
  final List<String> dataTitles;

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      data: dataList,
      dataTitles: dataTitles,
    );

    myBarData.initializeBarData();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: myBarData.barData.length * 30.0, // Adjust the width as needed
        child: BarChart(
          BarChartData(
            maxY: 100,
            minY: 0,
            gridData: FlGridData(show: true, drawVerticalLine: false),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true, getTitlesWidget: getBottomTitles),
              ),
            ),
            barGroups: myBarData.barData
                .map(
                  (data) => BarChartGroupData(
                    x: data.x,
                    barRods: [
                      BarChartRodData(
                        toY: data.y,
                        color: Colors.greenAccent,
                        width: 25,
                        borderRadius: BorderRadius.circular(4),
                      )
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  int year = 2024;
  int month = 10;

  void incrementDate(int byHowMuch) {
    if (month + 1 == 13) {
      month = 1;
      year++;
      return;
    }
    month++;
  }

  incrementDate(value.toInt());

  String? convertIndexToMonth(int index) {
    switch (index) {
      case 1:
        return "Jan";
      case 2:
        return "Feb";
      case 3:
        return "Mar";
      case 4:
        return "Apr";
      case 5:
        return "May";
      case 6:
        return "Jun";
      case 7:
        return "Jul";
      case 8:
        return "Aug";
      case 9:
        return "Sep";
      case 10:
        return "Oct";
      case 11:
        return "Nov";
      case 12:
        return "Dec";
      default:
        return null;
    }
  }

  Widget widget = Text('${convertIndexToMonth(month)}\n $year');

  return SideTitleWidget(
    child: widget,
    meta: meta,
  );
}
