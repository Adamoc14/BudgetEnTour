import 'package:flutter/material.dart';
import '../Models/Trip.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final List<Trip> _tripsList = [
    Trip("New York" , DateTime.now(), DateTime.now(), 50.0, "Plane" ),
    Trip("Boston" , DateTime.now(), DateTime.now(), 70.0, "Car" ),
    Trip("Washington D.C." , DateTime.now(), DateTime.now(), 50.0, "Plane" ),
    Trip("Austin" ,DateTime.now() , DateTime.now(), 75.0, "Car" ),
  ];

  Widget buildTripCard(BuildContext context, int index) {
    final Trip tripIterated = _tripsList[index];
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 8.0 , top:4.0),
              child: Row(
                children: [
                  Text(
                    tripIterated.title , 
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 80.0 , top:4.0), 
              child: Row(
                children: [
                  Text('${DateFormat('dd/MM/yyyy').format(tripIterated.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(tripIterated.endDate).toString()}'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0 , top:8.0),
              child: Row(
                children: [
                  Text(
                    '€${tripIterated.budget.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 39.0,
                    ),
                  ),
                  Spacer(),
                  // Text(tripIterated.travelType),
                  Icon(Icons.directions_car),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemCount: _tripsList.length, itemBuilder: (BuildContext context, int index) => buildTripCard(context, index))
    );
  }
}
