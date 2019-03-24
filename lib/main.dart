import 'package:airline/CityCard.dart';
import 'package:airline/CustomBottomBar.dart';
import 'package:airline/HomeScreenTop.dart';
import 'package:airline/HomeScreenBottom.dart';
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
      bottomNavigationBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            HomeScreenTop(),
            HomeScreenBottom(),
            HomeScreenBottom(),
          ],
        ),
      ),
    );
  }
}









