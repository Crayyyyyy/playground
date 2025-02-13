import 'package:playground/components/individual_bar.dart';

class BarData {
  final List<double> data;
  final List<String> dataTitles;

  BarData({
    required this.data,
    required this.dataTitles,
  });

  List<IndividualBar> barData = [];

  void initializeBarData() {
    for (int i = 0; i < data.length; i++) {
      barData.add(
        IndividualBar(
          x: i + 1,
          y: data[i],
        ),
      );
    }
  }
}
