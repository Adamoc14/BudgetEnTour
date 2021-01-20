import 'package:flutter/material.dart';
import 'package:BudgetEnTour/Models/Trip.dart';
import 'package:BudgetEnTour/Pages/New_Trip/Budget.dart';

class NewTripDate extends StatelessWidget {
  final Trip trip;
  // We are going to instantiate a NewTripLocation with a required Trip instance
  // This is the way we are going to save the values across the pages
  NewTripDate({Key key, @required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Trip - Date"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Enter a Start Date"),
                Text("Enter a End Date"),
              ],
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: () {
                trip.startDate = DateTime.now();
                trip.endDate = DateTime.now();
                Navigator.push(
                  context , 
                  MaterialPageRoute(builder: (context) => NewTripBudget(trip:trip)),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}