import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  final String child;
  const PostBox({
    super.key, 
    required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 200,
        color: Colors.grey[300],
        child: Center(child: Text(child)),
      ),
    );
  }
}
