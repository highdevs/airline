import 'package:airline/custom_bottom.dart';
import 'package:airline/home_screen_bottom.dart';
import 'package:airline/home_screen_top.dart';
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
          ],
        ),
      ),
    );
  }
}
