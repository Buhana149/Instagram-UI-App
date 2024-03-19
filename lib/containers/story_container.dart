import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({
    super.key,
    required this.child,
    required this.onTap,
  });

  final String child;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: 60,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          child: Center(
            child: Text(child),
          ),
        ),
      ),
    );
  }
}
