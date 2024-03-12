import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReelPage extends StatelessWidget {
  const ReelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[300],
        width: 700.0,
        height: 800.0,
        child:  Row(
          children: [
             Padding(
              padding:  EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(Icons.account_circle),
                      ),
                      Text('marinela_cocheta53'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(color: Color.fromARGB(255, 241, 239, 239), borderRadius: BorderRadius.circular(5)),
                            height: 15,
                            width: 45,
                            child: Text('Follow'),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                    ),
                  SizedBox(
                    width: 120,
                    height: 100,
                    child: Text(
                      'Mai mereu mi-am dorit sa va arat aceasta reteta de coltunasi, o bucurie '), 
                  )
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 110, 
                bottom: 8.0,
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 50,
                      height: 50,
                      child: 
                      IconButton(
                        icon: const Icon(Icons.favorite_border), 
                        onPressed: () {},
                        )),
                  SizedBox(
                      width: 50,
                      height: 50,
                      child: 
                      IconButton(
                        icon: const Icon(Icons.mode_comment_outlined),
                        onPressed: () {},
                        )),
                  SizedBox(
                      width: 50, height: 50, 
                      child: IconButton(
                        icon: const Icon(Icons.send_sharp),
                        onPressed: () {},
                      )),
                  SizedBox(width: 50, height: 50,
                   child: IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                    ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
