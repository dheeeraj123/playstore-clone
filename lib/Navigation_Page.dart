import 'package:flutter/material.dart';
import 'package:playstore_clone/Homepage.dart';
import 'package:playstore_clone/Navigation_Apps.dart';

import 'first_page.dart';

class NavigationPage extends StatefulWidget {
   NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
   int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:[HomePage(),
        navigationApps(),
      ] [selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex:selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex=index;
            });

          },
          showUnselectedLabels: true,
          backgroundColor: Colors.tealAccent,
          fixedColor: Colors.teal,iconSize: 35,
          items: [
            BottomNavigationBarItem( label:'Games', icon: Icon(Icons.adb_outlined),),
            BottomNavigationBarItem(label: 'Apps',icon: Icon(Icons.settings_applications_sharp),),
            BottomNavigationBarItem(label: 'Offer',icon: Icon(Icons.local_offer_outlined),),
            BottomNavigationBarItem(label: 'Books',icon: Icon(Icons.book_outlined),)
          ]),
    );
  }
}
