 import 'package:airline/city_card.dart';
import 'package:airline/flight_list.dart';
import 'package:flutter/material.dart';
//Comment so you can push w a message to your future self. 

class FlightCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(color: flightBorderColor)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '${formatCurrency.format(4159)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      '${formatCurrency.format(9999)}',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: -8.0,
                  children: <Widget>[
                    FlightDetailsWidget(Icons.calendar_today, 'June 2019'),
                    FlightDetailsWidget(Icons.flight_takeoff, 'Jet Airways'),
                    FlightDetailsWidget(Icons.star, '4.4'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}

class FlightDetailsWidget extends StatelessWidget {
  final String label;
  final IconData iconData;
  FlightDetailsWidget(this.iconData, this.label);
  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      labelStyle: TextStyle(color: Colors.black, fontSize: 14.0),
      backgroundColor: chipBackgroundColor,
      avatar: Icon(iconData, size: 14.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
