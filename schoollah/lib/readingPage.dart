import 'package:flutter/material.dart';
import 'ArticleList.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'articleLibrary.dart';
import 'navigationBar.dart';

import 'package:flutter/services.dart';
import 'package:custom_navigator/custom_navigator.dart';

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
    );
  }

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }
}
