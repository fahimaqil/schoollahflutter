import 'package:flutter/material.dart';

class NavBar {
  final BottomNavigationBar NavBarBot = BottomNavigationBar(
    currentIndex: 0, // this will be set when a new tab is tapped
    items: [
      BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: new Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.mail),
        title: new Text('Messages'),
      ),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile'))
    ],
  );

  Widget GetNavbar() {
    return NavBarBot;
  }
}
