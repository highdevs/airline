import 'package:airline/HomeScreenTop.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];
  final bottomNavBarItemsStyle =
      TextStyle(fontStyle: FontStyle.normal, color: Colors.black);
  CustomAppBar() {
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.favorite,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
        title: Text(
          'Watch',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.local_offer,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.local_offer,
          color: Colors.black,
        ),
        title: Text(
          'Deals',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.notifications,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.0,
      child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
