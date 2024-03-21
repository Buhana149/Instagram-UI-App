import 'package:flutter/material.dart';
import 'package:instagram_ui/utilities/my_progress_bar.dart';


class MyStoryBars extends StatelessWidget {
  
  const MyStoryBars({super.key, required this.percentWatched});

  final List<double> percentWatched;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 8, right: 8),
      child: Row(
        children: [
          Expanded(child: MyProgressBar(percentWatched: percentWatched[0])),
          Expanded(child: MyProgressBar(percentWatched: percentWatched[1])),
          Expanded(child: MyProgressBar(percentWatched: percentWatched[2])),
        ],
      ),
    );
  }
}
