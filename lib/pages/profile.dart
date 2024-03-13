import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            icon: const Icon(Icons.add_box_outlined),
            ),
            IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.menu_rounded),
            )
        ],
      ),

      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person)
        ],
      ),
      );
  }
}