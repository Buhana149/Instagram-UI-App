import 'package:flutter/material.dart';
import 'package:instagram_ui/utilities/chat_box.dart';

class MessengerPage extends StatelessWidget {
   MessengerPage({super.key});

  final List _chat = [
    'Chat 1',
    'Chat 2',
    'Chat 3',
    'Chat 4',
    'Chat 5',
    'Chat 6'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
            const Text('gynella_ella47', style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_downward_sharp,
                size: 15,)
              ),
            )
          ]),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.add_comment_outlined),
            ),
        
        ],
       ),
       body: Expanded(
         child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
              decoration: InputDecoration(
              hintText: 'Search',
              
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  ),
              ),
                        ),
            ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: _chat.length,
              itemBuilder: (context, index) {
                return ChatBox(
                  child: _chat[index],
                );
              },
            ),
          )
          ],
         ),
       ),
    );
  }
}