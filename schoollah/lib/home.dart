import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'readingPage.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'scholarshipPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Widget page = ReadingPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          // here we used the navigator key to pop the stack to get back to our
          // main page
          navigatorKey.currentState.maybePop();
          setState(
            () {
              if (index == 0) {
                page = ReadingPage();
              }
              if (index == 1) {
                page = ScholarshipPage();
              }
            },
          );
          _selectedTabIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Color(0xff47B9BD),
            ),
            icon: Icon(Icons.home, color: Colors.grey),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(0xff47B9BD),
                fontFamily: 'Raleway',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.school,
              color: Color(0xff47B9BD),
            ),
            icon: Icon(Icons.school, color: Colors.grey),
            title: Text(
              'Scholarship',
              style: TextStyle(
                color: Color(0xff47B9BD),
                fontFamily: 'Raleway',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.bookmark,
              color: Color(0xff47B9BD),
            ),
            icon: Icon(Icons.bookmark, color: Colors.grey),
            title: Text(
              'Saved',
              style: TextStyle(
                color: Color(0xff47B9BD),
                fontFamily: 'Raleway',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Color(0xff47B9BD),
            ),
            icon: Icon(Icons.person, color: Colors.grey),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Color(0xff47B9BD),
                fontFamily: 'Raleway',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
      body: CustomNavigator(
        navigatorKey: navigatorKey,
        home: page,
        //Specify your page route [PageRoutes.materialPageRoute] or [PageRoutes.cupertinoPageRoute]
        pageRoute: PageRoutes.materialPageRoute,
      ),
    );
  }

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }
}
