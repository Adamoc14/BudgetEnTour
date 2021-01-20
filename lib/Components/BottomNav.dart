import 'package:flutter/material.dart';
import '../Pages/HomePage.dart';
import '../Pages/ExplorePage.dart';
import '../Pages/PastTripsPage.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> _tabPages = [
    HomePage(),
    ExplorePage(),
    PastTripsPage()
  ];

  void onTabTapped(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Budget App"),
      ),
      body: _tabPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            label: "Past Trips",
          ),
        ],
        currentIndex: _currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}