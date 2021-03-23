import 'package:flutter/material.dart';
import 'package:app_test/ui/post.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Trendo",),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {}),

          new IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {}),

          new IconButton(
              icon: Icon(Icons.person_add, color: Colors.white),
              onPressed: () {}),

          new IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          PostItem(name: "mohamed alnashar", time: "yesterday",img:"image/car.jpg" ,),
          PostItem(name: "mohamed alnashar", time: "yesterday",img:"image/car.jpg" ,),
          PostItem(name: "mohamed alnashar", time: "yesterday",img:"image/car.jpg" ,),
          PostItem(name: "mohamed alnashar", time: "yesterday",img:"image/car.jpg" ,)
        ],
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: (){},
        ),
    );
  }
}
