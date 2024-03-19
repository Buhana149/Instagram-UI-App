import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  final String child;
  final void Function(); 
  const StoryBox({
    super.key,
   required this.child, 
   required this. function});

   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: function,
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
