import 'package:airline/CityCard.dart';
import 'package:flutter/material.dart';
import 'package:airline/HomeScreenTop.dart';

var viewAllStyle = TextStyle(fontSize: 14.0, color: appTheme.primaryColor);

class HomeScreenBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 16.0,
              ),
              Text(
                'Currently Matched Items',
                style: dropDownMenuItemStyle,
              ),
              Spacer(),
              Text(
                'View All',
                style: viewAllStyle,
              ),
            ],
          ),
        ),
        Container(

          height: 210.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cityCards,
          ),
        ),
      ],
    );
  }
}
List<CityCard> cityCards = [
  CityCard("images/calgary.jpg", "Calgary", "May 2019", "45", 4299, 2210),
  CityCard("images/london.jpg", "London", "March 2019", "15", 2249, 4240),
  CityCard("images/paris.jpeg", "Paris", "April 2019", "25", 1249, 3456),

];