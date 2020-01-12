import 'package:flutter/material.dart';
import 'home.dart';
import 'message.dart';
import 'movie.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;
  final _PageOptions = [
    HomePage(),
    Message(),
    MovieApp(),
  ];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: _PageOptions[_selectedPage],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       type: BottomNavigationBarType.fixed,
       unselectedItemColor: Colors.white,
       selectedItemColor: Colors.grey[200],
       backgroundColor: Colors.red[300],
       currentIndex: _selectedPage, // this will be set when a new tab is tapped

       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
           backgroundColor: Colors.red,
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
           backgroundColor: Colors.orange
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.movie),
           title: Text('My Movie'),
           backgroundColor: Colors.blue
         ),
       ],
     ),
   );
 }

 void onTabTapped(int index) {
   setState(() {
     _selectedPage = index;
   });
 }

}