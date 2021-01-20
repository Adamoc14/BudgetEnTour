import 'package:flutter/material.dart';
import 'package:BudgetEnTour/Models/Trip.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewTripBudget extends StatelessWidget {
  final db = FirebaseFirestore.instance;
  final Trip trip;

  // We are going to instantiate a NewTripLocation with a required Trip instance
  // This is the way we are going to save the values across the pages
  NewTripBudget({Key key, @required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Trip - Budget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Finish"),
            RaisedButton(
              child: Text("Finish"),
              onPressed: () async {
                // Push Data to our API Create Route or Save Data to Firebase
                await db.collection("trips").add(trip.toJson());
                Navigator.of(context).popUntil((route) => route.isFirst);
              }
            ),
          ],
        ),
      ),
    );
  }
}