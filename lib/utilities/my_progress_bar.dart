import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyProgressBar extends StatelessWidget {
   double percentWatched = 0;

  MyProgressBar({required this.percentWatched});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: Radius.circular(12),
      lineHeight: 10,
      progressColor: Colors.grey[200],
      backgroundColor: Colors.grey[600],
    );
  }
}
