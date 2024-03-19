import 'package:flutter/material.dart';

import 'package:instagram_ui/pages/add.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/profile.dart';
import 'package:instagram_ui/pages/reel.dart';
import 'package:instagram_ui/pages/search.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400],
        onTap: _onItemTapped,

        items: bottomNavigationBarItems,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined), 
            label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), 
              label: 'Reel'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile'),
        ],

      ),
    );
  }

final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    ReelPage(),
    ProfilePage(),
  ];


   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final bottomNavigationBarItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Add'),
    BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: 'Reel'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];
}
