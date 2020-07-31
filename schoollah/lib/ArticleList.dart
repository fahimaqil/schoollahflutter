import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'articleLibrary.dart';
import 'articleScreen.dart';

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

//Code from https://medium.com/@dltlabs/how-to-build-a-flutter-card-list-in-less-than-10-minutes-9839f79a6c08
class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          Library article = articles[index];
          if (index == 0) {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    //                   <--- left side
                    color: Colors.grey.withOpacity(0.4),
                    width: 1.0,
                  ),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Stack(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ArticleScreen(
                                  articles: article,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: article.imageUrl,
                            child: Container(
                              height: 240, //Add here
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 150.0,
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 5),
                                    decoration: new BoxDecoration(
                                      image: DecorationImage(
                                        image: new AssetImage(article.imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  textCategory(article.category),
                                  textTitles(article.name, 0, 1, 1),
                                  textContent(10, 1),
                                  Row(
                                    children: <Widget>[
                                      textDates(article.date),
                                      Container(
                                        padding: EdgeInsets.only(
                                            bottom: 5, left: 5, right: 5),
                                        child: Icon(
                                          Icons.brightness_1,
                                          color: Colors.grey.withOpacity(0.9),
                                          size: 4.0,
                                        ),
                                      ),
                                      textAuthor(article.author),
                                      bookmarkIcon(0, 40, 10, 6),
                                      shareIcon(0, 6),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
//                   <--- left side
                    color: Colors.grey.withOpacity(0.4),
                    width: 1.0,
                  ),
                ),
              ),
//
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Stack(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ArticleScreen(
                                  articles: article,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: article.imageUrl,
                            child: Container(
                              height: 120, //Add here
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      textCategory(article.category),
                                      textTitles(article.name, 15, 1.75, 2),
                                      textContent(30, 1.75),
//textContent(),
                                      Row(
                                        children: <Widget>[
                                          textDates(article.date),
                                          Container(
                                            padding: EdgeInsets.only(
                                                bottom: 5, left: 5, right: 5),
                                            child: Icon(
                                              Icons.brightness_1,
                                              color:
                                                  Colors.grey.withOpacity(0.9),
                                              size: 4.0,
                                            ),
                                          ),
                                          textAuthor(article.author),
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        height: 80.0,
                                        width: 130.0,
                                        margin:
                                            EdgeInsets.only(top: 5, left: 8),
                                        decoration: new BoxDecoration(
                                          image: DecorationImage(
                                            image: new AssetImage(
                                                article.imageUrl),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          bookmarkIcon(5, 10, 10, 0),
                                          shareIcon(5, 0),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
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
        width: MediaQuery.of(context).size.width / widthSize,
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
      width: MediaQuery.of(context).size.width / widthSize,
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
