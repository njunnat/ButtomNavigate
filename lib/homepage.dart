import 'package:flutter/material.dart';
import 'package:rrrrrr/pg1.dart';
import 'package:rrrrrr/pg2.dart';
import 'package:rrrrrr/pg3.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentIndex = 0;
  final pages= [
    page1(),page2(),page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(

        ),
        bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
           onTap: (index){
           setState(() {
             _currentIndex=index;
           });
           },
           items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home"),),
        BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("People"),),
        BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text("Mail"),),
     ]),
        appBar: AppBar(
        title: Text("My page"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 20,
      ),
        body: pages[
      _currentIndex
      ]
    );
  }
}
