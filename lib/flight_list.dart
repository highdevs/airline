import 'package:airline/FlightListingBottom.dart';
import 'package:airline/FlightListingTop.dart';
import 'package:flutter/material.dart';

final Color discountBackgroundColor = Color(0xFFFFE08D);
final Color flightBorderColor = Color(0xFFE6E6E6);
final Color chipBackgroundColor = Color(0xFFF6F6F6);

class FlightListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Search Results',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
        leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: <Widget>[
          FlightListingTop(),
          FlightListingBottom(),
        ],
      ),
    );
  }
}
