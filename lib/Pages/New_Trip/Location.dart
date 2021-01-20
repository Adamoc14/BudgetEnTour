import 'package:flutter/material.dart';
import 'package:BudgetEnTour/Models/Trip.dart';
import 'package:BudgetEnTour/Pages/New_Trip/DateView.dart';

class NewTripLocation extends StatelessWidget {
  final Trip trip;
  // We are going to instantiate a NewTripLocation with a required Trip instance
  // This is the way we are going to save the values across the pages
  NewTripLocation({Key key, @required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController _locationTitleController = new TextEditingController();
    _locationTitleController.text = trip.title;

    return Scaffold(
      appBar: AppBar(
        title: Text("Create Trip - Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter a Location"),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: _locationTitleController,
                autofocus: true,
              ),
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: () {
                trip.title = _locationTitleController.text;
                Navigator.push(
                  context , 
                  MaterialPageRoute(builder: (context) => NewTripDate(trip:trip)),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}