import 'dart:js';

import 'package:flutter/material.dart';
import 'package:instagram_ui/containers/post_container.dart';
import 'package:instagram_ui/containers/story_container.dart';
import 'package:instagram_ui/pages/messenger.dart';
import 'package:instagram_ui/pages/story_page.dart';

class HomePage extends StatelessWidget {
  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6'
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
  ];

  void _openStory(BuildContext context) {

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => StoryPage()));
  }

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey[600],
            ),
            tooltip: 'View notifications',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.messenger_outline_rounded,
              color: Colors.grey[600],
            ),
            tooltip: 'Messenger',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => MessengerPage())));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // story posts
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (context, index) {
                return StoryBox(
                  function: _openStory,
                  child: _stories[index],
                );
              },
            ),
          ),
          // activity posts
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return PostBox(
                  child: _post[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
