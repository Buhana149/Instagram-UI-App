import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
                ),
            ),
          ),
          actions:  [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon((Icons.more_vert)),
                onPressed: () {}
                ,),
            ),
          ],
        ),
        body: GridView.builder(
          itemCount: 20,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  width: 160,
                  color: Colors.grey[300],
                ),
              );
            }));
  }
}
