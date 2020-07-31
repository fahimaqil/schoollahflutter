import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
//
//class HomeScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//          child: Text(
//        "Welcome to home page",
//        style: TextStyle(fontSize: 25.0),
//      )),
//    );
//  }
//}
import 'package:transformer_page_view/transformer_page_view.dart';

class LandingPage extends StatefulWidget {
  final String title;
  LandingPage({this.title});
  @override
  LandingPageState createState() {
    return new LandingPageState();
  }
}

class LandingPageState extends State<LandingPage> {
  int _slideIndex = 0;
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  final List<String> images = [
    "images/student6.png",
    "images/ebook.png",
    "images/scholarship.png"
  ];
//Make sure refactor the code/list
  List<Color> colors = [Colors.orange];
  final List<String> text0 = ["Hello", "", ""];
  final List<String> text1 = ["Ready To Get Started?", "", ""];
  final List<String> text2 = [
    "Schoollah",
    "Read amazing articles",
    "Discover available scholarships",
  ];
  final List<String> text3 = [
    "Learning today. Leading tomorrow",
    "Gain more knowledge to explore your potential",
    "Keep dreaming higher we’ll help you to achieve it"
  ];

  Widget OneImage(TransformInfo info) {
    return new ParallaxContainer(
      child: new Image.asset(
        images[info.index],
        fit: BoxFit.contain,
        height: 200,
      ),
      position: info.position,
      translationFactor: 400.0,
    );
  }

  Widget ButtonRow(TransformInfo info) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          color: Color(0xff47B9BD),
          child: RaisedButton(
            color: Color(0xff47B9BD),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(18.0)),
            // disabledColor: Color(0xff47B9BD),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 60.0,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          color: Color(0xff47B9BD),
          child: RaisedButton(
            color: Color(0xff47B9BD),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(18.0)),
            //disabledColor: Color(0xff47B9BD),
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  final IndexController controller = IndexController();
  @override
  Widget build(BuildContext context) {
    TransformerPageView transformerPageView = TransformerPageView(
        pageSnapping: true,
        onPageChanged: (index) {
          setState(() {
            this._slideIndex = index;
          });
        },
        loop: false,
        controller: controller,
        transformer: new PageTransformerBuilder(
            builder: (Widget child, TransformInfo info) {
          return new Material(
            color: Color(0xff47B9BD),
            elevation: 8.0,
            textStyle: new TextStyle(color: Colors.white),
            borderRadius: new BorderRadius.circular(12.0),
            child: new Container(
              alignment: Alignment.center,
              color: Color(0xff47B9BD),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new ParallaxContainer(
                      child: new Text(
                        text0[info.index],
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 34.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),
                      ),
                      position: info.position,
                      opacityFactor: .8,
                      translationFactor: 400.0,
                    ),
                    new ParallaxContainer(
                      child: new Text(
                        text1[info.index],
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w200),
                      ),
                      position: info.position,
                      opacityFactor: .8,
                      translationFactor: 400.0,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OneImage(info),
                    SizedBox(
                      height: 10.0,
                    ),
                    new ParallaxContainer(
                      child: new Text(
                        text2[info.index],
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: info.index == 2 ? 21 : 24,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),
                      ),
                      position: info.position,
                      opacityFactor: .8,
                      translationFactor: 400.0,
                    ),
                    new ParallaxContainer(
                      child: new Text(
                        text3[info.index],
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w200),
                      ),
                      position: info.position,
                      translationFactor: 300.0,
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    new ParallaxContainer(
                      position: info.position,
                      translationFactor: 500.0,
                      child: Dots(
                        controller: controller,
                        slideIndex: _slideIndex,
                        numberOfDots: images.length,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    info.index == 2 ? ButtonRow(info) : Container()
                  ],
                ),
              ),
            ),
          );
        }),
        itemCount: 3);

    return Scaffold(
      backgroundColor: Color(0xff47B9BD),
      body: transformerPageView,
    );
  }
}

class Dots extends StatelessWidget {
  final IndexController controller;
  final int slideIndex;
  final int numberOfDots;
  Dots({this.controller, this.slideIndex, this.numberOfDots});

  List<Widget> _generateDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; i++) {
      dots.add(i == slideIndex ? _activeSlide(i) : _inactiveSlide(i));
    }
    return dots;
  }

  Widget _activeSlide(int index) {
    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: new Container(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(.3),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _inactiveSlide(int index) {
    return GestureDetector(
      onTap: () {
        controller.move(index);
      },
      child: new Container(
        child: Padding(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.7),
                borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _generateDots(),
    ));
  }
}
