import 'package:flutter/material.dart';
import '../Pages/HomePage.dart';
import '../Pages/ExplorePage.dart';
import '../Pages/PastTripsPage.dart';
import '../Pages/New_Trip/Location.dart';
import 'package:BudgetEnTour/Models/Trip.dart';

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
    // Need to pass a new trip into the New_Pages to be able to get the values from 
    // The newTrip set up 
    final newTrip = new Trip(null,null,null,null,null);
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Budget App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context , 
                MaterialPageRoute(builder: (context) => NewTripLocation(trip:newTrip)),
              );
            },
          ),
        ]
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