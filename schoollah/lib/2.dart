import 'package:flutter/material.dart';
import 'articleLibrary.dart';
import 'package:flutter/rendering.dart';

class ArticleScreen extends StatefulWidget {
  final Library articles;
  ArticleScreen({this.articles});

  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen>
    with TickerProviderStateMixin {
  AnimationController _ColorAnimationController;
  AnimationController _TextAnimationController;
  Animation _colorTween, _iconColorTween;
  Animation<Offset> _transTween;

  ScrollController _controller;
  bool hasReach = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomPadding: false,
//      appBar: AppBar(
//        automaticallyImplyLeading: true,
//        backgroundColor:
//            hasReach ? Colors.blue.withOpacity(1) : Colors.blue.withOpacity(0),
//        elevation: 0,
//
//        //`true` if you want Flutter to automatically add Back Button when needed,
//        //or `false` if you want to force your own back button every where
//        // title: Text('AppBar Back Button'),
////        backgroundColor: Colors.transparent,
//      ),
      body: NotificationListener(
        child: ListView(
          padding: EdgeInsets.only(bottom: 15.0),
          controller: _controller,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              // color: Colors.blue,
              height: 10,
              child: AnimatedBuilder(
                animation: _ColorAnimationController,
                builder: (context, child) => AppBar(
                  backgroundColor: _colorTween.value,
                  elevation: 0,
                  titleSpacing: 0.0,
                  title: Transform.translate(
                    offset: _transTween.value,
                    child: Text(
                      "dasdsa",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Hero(
                        tag: widget.articles.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          child: Image(
                            image: AssetImage(widget.articles.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.articles.category,
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.articles.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        widget.articles.date,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 1, left: 5, right: 5),
                      child: Icon(
                        Icons.brightness_1,
                        color: Colors.grey.withOpacity(0.9),
                        size: 6.0,
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 10),
                      child: Text(
                        widget.articles.author,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  padding: EdgeInsets.only(left: 2, right: 10),
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Erat nam at lectus urna duis. Egestas erat imperdiet sed euismod. Ac placerat vestibulum lectus mauris ultrices. Et molestie ac feugiat sed. Facilisis leo vel fringilla est ullamcorper eget. Ut tristique et egestas quis ipsum. Ultrices tincidunt arcu non sodales neque sodales ut etiam sit. Ipsum dolor sit amet consectetur adipiscing. Aliquam id diam maecenas ultricies mi eget.Convallis tellus id interdum velit. Dui vivamus arcu felis bibendum ut tristique. Tristique et egestas quis ipsum suspendisse ultrices. Tortor condimentum lacinia quis vel eros donec. Fermentum iaculis eu non diam phasellus vestibulum. Senectus et netus et malesuada fames ac turpis. Ante metus dictum at tempor commodo ullamcorper a lacus. Malesuada fames ac turpis egestas maecenas pharetra convallis posuere morbi. Vivamus arcu felis bibendum ut tristique et egestas quis. Massa enim nec dui nunc. Porttitor lacus luctus accumsan tortor posuere ac ut consequat. Feugiat in ante metus dictum. Felis donec et odio pellentesque. Ipsum nunc aliquet bibendum enim facilisis gravida. Lacus vel facilisis volutpat est velit. Ac turpis egestas integer eget aliquet nibh praesent tristique magna. Parturient montes nascetur ridiculus mus. Diam quis enim lobortis scelerisque. Ac odio tempor orci dapibus ultrices in. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Diam maecenas sed enim ut sem viverra aliquet. Ipsum consequat nisl vel pretium lectus quam id leo. Morbi non arcu risus quis varius quam quisque. Aliquet bibendum enim facilisis gravida. Bibendum arcu vitae elementum curabitur vitae nunc. Tristique senectus et netus et malesuada fames ac. Facilisis mauris sit amet massa vitae tortor. Pharetra magna ac placerat vestibulum lectus. Imperdiet proin fermentum leo vel. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Convallis posuere morbi leo urna.Arcu cursus euismod quis viverra. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Lorem ipsum dolor sit amet consectetur adipiscing. Augue lacus viverra vitae congue. In metus vulputate eu scelerisque felis imperdiet. Lorem ipsum dolor sit amet consectetur adipiscing. In fermentum et sollicitudin ac. Sem viverra aliquet eget sit amet. Odio ut sem nulla pharetra. Eu consequat ac felis donec et odio pellentesque diam volutpat. Risus viverra adipiscing at in tellus integer feugiat scelerisque varius. Elit at imperdiet dui accumsan sit amet nulla facilisi. Metus dictum at tempor commodo ullamcorper a lacus vestibulum sed.Nunc eget lorem dolor sed viverra ipsum nunc. Amet facilisis magna etiam tempor orci eu. Dui ut ornare lectus sit amet. Quam viverra orci sagittis eu. Diam quam nulla porttitor massa. Quisque non tellus orci ac auctor augue mauris augue neque. Faucibus turpis in eu mi bibendum neque egestas congue. Nam at lectus urna duis convallis convallis tellus. Elit sed vulputate mi sit. Netus et malesuada fames ac turpis egestas integer eget.Tincidunt nunc pulvinar sapien et. Eu sem integer vitae justo eget magna fermentum iaculis eu. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Vestibulum morbi blandit cursus risus at ultrices mi. Proin sed libero enim sed faucibus turpis in eu. Mollis aliquam ut porttitor leo. Adipiscing diam donec adipiscing tristique risus nec. Tincidunt dui ut ornare lectus sit amet est placerat. Ut venenatis tellus in metus vulputate eu scelerisque felis. Nulla at volutpat diam ut venenatis tellus in. Placerat in egestas erat imperdiet. Tristique senectus et netus et malesuada fames. Ultricies mi quis hendrerit dolor magna eget est lorem ipsum. Eget velit aliquet sagittis id. Sed velit dignissim sodales ut eu sem. Natoque penatibus et magnis dis.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        onNotification: (t) {
          if (t is ScrollEndNotification) {
            if (_controller.position.pixels > 370) {
              setState(() {
                hasReach = true;
              });
            } else if (_controller.position.pixels <= 370) {
              setState(() {
                hasReach = false;
              });
            }
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black45,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Raleway',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.grey),
            title: Text(
              'Scholarship',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Raleway',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.grey),
            title: Text(
              'Saved',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Raleway',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.grey,
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

  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Color(0xFFee4c4f))
        .animate(_ColorAnimationController);
    _iconColorTween = ColorTween(begin: Colors.grey, end: Colors.white)
        .animate(_ColorAnimationController);

    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    _transTween = Tween(begin: Offset(-10, 40), end: Offset(-10, 0))
        .animate(_TextAnimationController);

    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 350);

      _TextAnimationController.animateTo(
          (scrollInfo.metrics.pixels - 350) / 50);
      return true;
    }
  }
//
//  disableScrolling() {
//    if (_controller.offset >= _controller.position.maxScrollExtent &&
//        !_controller.position.outOfRange) {
//      setState(() {
//        message = "reach the bottom";
//      });
//    }
//    if (_controller.offset <= _controller.position.minScrollExtent &&
//        !_controller.position.outOfRange) {
//      setState(() {
//        message = "reach the top";
//      });
//    }
//   }
}
