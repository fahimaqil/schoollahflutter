import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'scholarshipLibrary.dart';
import 'scholarshipScreen.dart';
import 'package:auto_size_text/auto_size_text.dart';

//class ScholarshipList extends StatefulWidget {
//  f
//  @override
//  _ScholarshipListState createState() => _ScholarshipListState();
//}
//https://sergiandreplace.com/planets-flutter-creating-a-planet-card/
//Code from https://medium.com/@dltlabs/how-to-build-a-flutter-card-list-in-less-than-10-minutes-9839f79a6c08
class ScholarshipList extends StatelessWidget {
  final String section;
  ScholarshipList({this.section});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: scholar.length,
        itemBuilder: (context, index) {
          Scholarship scholarList = scholar[index];

          return Stack(
            children: <Widget>[
              Container(
                height: 111.0,
                width: MediaQuery.of(context).size.width,
                margin: new EdgeInsets.only(left: 50, right: 20, top: 12),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1,
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: new Offset(0.0, 10.0),
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    //need to factorize code
                    Column(
                      children: <Widget>[
                        Container(
                          //margin: EdgeInset
                          padding: EdgeInsets.only(bottom: 5), //left: 10),
                          alignment: Alignment(-1, 0),
                          margin: EdgeInsets.only(
                            left: 47,
                          ),
                          child: Text(
                            '${scholarList.category}',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          alignment: Alignment(-1, 0),
                          height: 35,
                          //1.75
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 47),
                          child: Text(
                            scholarList.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          //padding: EdgeInsets.only(bottom: 15),
                          //15
                          //margin: EdgeInsets.only(bottom: 0, top: number),
                        ),
                        Container(
                          //margin: EdgeInset
                          padding: EdgeInsets.only(bottom: 5), //left: 10),
                          alignment: Alignment(-1, 0),
                          margin: EdgeInsets.only(
                            left: 47,
                          ),
                          child: Text(
                            'By:${scholarList.sponsor}',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          //margin: EdgeInset
                          padding: EdgeInsets.only(bottom: 5), //left: 10),
                          alignment: Alignment(-1, 0),
                          margin: EdgeInsets.only(
                            left: 47,
                          ),
                          child: Text(
                            '${scholarList.description}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboto',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              //margin: EdgeInset
                              padding: EdgeInsets.only(bottom: 5),
                              alignment: Alignment(-1, 0),
                              margin: EdgeInsets.only(
                                left: 47,
                              ),
                              child: Text(
                                'Deadlines:${scholarList.deadLines}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45, bottom: 3),
                              // padding: EdgeInsets.only(bottom: pad),
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.grey.withOpacity(0.9),
                                size: 18.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 3),
                              // padding: EdgeInsets.only(top: 5),
                              // padding: EdgeInsets.only(bottom: pad),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.grey.withOpacity(0.9),
                                size: 18.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                padding: EdgeInsets.all(5),
                alignment: FractionalOffset.centerLeft,
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFe0f2f1),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1,
                    ),
                    image: DecorationImage(
                      image: new AssetImage(scholarList.imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget textAuthor(String text) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      //padding: EdgeInsets.only(left: 5),
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto',
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget textCategory(String text) {
    return Container(
      //margin: EdgeInsets.only(right: 15),
      //padding: EdgeInsets.only(left: 5),
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.grey,
          fontFamily: 'Roboto',
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget textDates(String date) {
    return Container(
      //margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(bottom: 5), //left: 10),
      child: Text(
        '$date',
        style: TextStyle(
          color: Colors.grey,
          fontFamily: 'Roboto',
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget textTitles(String text, double number, double widthSize, int minSize) {
    return Expanded(
      child: Container(
        //1.75
        //width: MediaQuery.of(context).size.width / widthSize,
        padding: EdgeInsets.all(0),

        //padding: EdgeInsets.only(bottom: 15),
        //15
        margin: EdgeInsets.only(bottom: 0, top: number),
        child: AutoSizeText(
          '$text ',
//          minFontSize: 11,
//          stepGranularity: 11,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          maxLines: minSize,
        ),
      ),
    );
  }

  Widget bookmarkIcon(double tp, double lf, double rt, double pad) {
    return Container(
      margin: EdgeInsets.only(top: tp, right: rt, left: lf),
      padding: EdgeInsets.only(bottom: pad),
      child: Icon(
        Icons.bookmark_border,
        color: Colors.grey.withOpacity(0.9),
        size: 18.0,
      ),
    );
  }

  Widget shareIcon(double tp, double pad) {
    return Container(
      margin: EdgeInsets.only(top: tp, left: 15),
      padding: EdgeInsets.only(bottom: pad),
      child: Icon(
        Icons.share,
        color: Colors.grey.withOpacity(0.9),
        size: 18.0,
      ),
    );
  }

  Widget textContent(double bot, double widthSize) {
    return Container(
      padding: EdgeInsets.all(0),
      //width: MediaQuery.of(context).size.width / widthSize,
      //20
      margin: EdgeInsets.only(bottom: bot),
      child: Text(
        "This is a long text This is a long tex. This is a long textThis is a long textThis is a long textThis is a long text",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        softWrap: false,
        style: TextStyle(
          color: Colors.grey,
          fontFamily: 'Roboto',
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
