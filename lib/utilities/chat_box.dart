import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  final String child;
  const ChatBox({
    super.key, 
    required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 50,
        color: Colors.grey[100],
        child: Row(
          children: [
          const Icon(Icons.person_3_outlined),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(child, style: const TextStyle(fontWeight: FontWeight.bold),),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 260.0),
            child: Icon(Icons.camera_alt_outlined),
          ),
          ]),
      ),
    );
  }
}