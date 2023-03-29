import 'package:flutter/material.dart';
import 'package:playstore_clone/first_page.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  suffixIcon: Icon(Icons.mic),
                  label: Text(
                    'search games&apps',
                  ),
                  floatingLabelStyle:
                      TextStyle(color: Colors.red, fontSize: 37))),
          leading: Icon(Icons.search),
          actions: [
            Icon(Icons.add_alert),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpp-80LntVqdKxt_a58fOtcoqxKZ_Kn7FE0g&usqp=CAU.png')),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'For You',
              ),
              Tab(
                text: 'Top Charts',
              ),
              Tab(
                text: 'Children',
              ),
              Tab(
                text: 'Events',
              ),
              Tab(
                text: 'Premium',
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          FirstPage(),
          FirstPage(),
          FirstPage(),
          FirstPage(),
          FirstPage(),
        ]),

      ),
    );
  }
}
