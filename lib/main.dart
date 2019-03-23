import 'package:airline/CityCard.dart';
import 'package:airline/HomeScreenTop.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Flight List Mock Up',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: appTheme,
    ));


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTop(),
          homeScreenBottomPart,
        ],
      ),
    );
  }
}






var viewAllStyle = TextStyle(fontSize: 14.0, color: appTheme.primaryColor);

var homeScreenBottomPart = Column(
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

