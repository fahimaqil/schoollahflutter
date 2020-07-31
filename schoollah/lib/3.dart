import 'package:flutter/material.dart';
import 'ArticleList.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'articleLibrary.dart';
import 'navigationBar.dart';
import 'package:flutter/services.dart';

class ReadingPage extends StatefulWidget {
  @override
  _ReadingPageState createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      //extendBodyBehindAppBar: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: new Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Raleway',
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xff47B9BD),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: double.infinity,
          //  margin: EdgeInsets.only(top: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ArticleList(),
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
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
    );
  }

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }
}
