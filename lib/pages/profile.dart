import 'package:flutter/material.dart';
import 'package:instagram_ui/tabs_profile/first_tab_profile.dart';
import 'package:instagram_ui/tabs_profile/second_tab_profile.dart';
import 'package:instagram_ui/tabs_profile/third_tab_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
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


      body:  const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 30),
                child: Icon(
                  Icons.person, 
                  size: 40,
                  ),
              ),
             
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text('16 \nposts'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('200 \nfollowers'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(' 500 \nfollowing'),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Gynella Ella', 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20,
              ),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Chocheta si aranjata'),
          ),

            Expanded(
              child: DefaultTabController(
                length: 3, 
                child: Scaffold(
                  body: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            icon: Icon(Icons.grid_on),
                          ),
                          Tab(
                            icon: Icon(Icons.video_collection),
                          ),
                          Tab(
                            icon: Icon(Icons.person_pin_sharp),
                          )
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            FirstTab(),
                            SecondTab(),
                            ThirdTab(),
                          ]),
                      ),
                    ],
                  ),
              
                )
                
                ),
            ),
    
        ]
      ),
      );
  }
}