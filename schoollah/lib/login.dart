import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  Widget buildIOSScaffold(
      TextField emailField, TextField passwordField, Material loginButon) {
    return CupertinoPageScaffold(
      navigationBar: buildNavigationBar(context),
      child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          )),
    );
  }

  CupertinoNavigationBar buildNavigationBar(BuildContext context) {
    return CupertinoNavigationBar(
        trailing: CupertinoButton(
      child: Text('Save', style: TextStyle(color: CupertinoColors.activeBlue)),
      onPressed: () => Navigator.pop(context),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final emailPretty = Container(
        height: 50.0,
        child: new Material(
          elevation: 5.0,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding:
                EdgeInsets.only(left: 0.0, right: 0.0, top: 5.0, bottom: 5.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email),
                  hintText: "JohnDoe@example.com",
                  hintStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Color(0xFFE1E1E1),
                    fontSize: 14,
                  )),
            ),
          ),
        ));
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordPretty = Container(
        height: 50.0,
        child: new Material(
          elevation: 5.0,
          color: Color(0xffFFFAFA),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding:
                EdgeInsets.only(left: 0.0, right: 0.0, top: 5.0, bottom: 5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8, right: 20),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontFamily: 'Raleway',
                    color: Color(0xFFE1E1E1),
                    fontSize: 14,
                  )),
            ),
          ),
        ));
    final loginButon = Container(
      width: 120,
      height: 40,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xffF37335),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          onPressed: () {},
          child: Text("Login",
              textAlign: TextAlign.center,
              style: style.copyWith(
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 14,
              )),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xff47B9BD),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,

        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        // title: Text('AppBar Back Button'),
//        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100.0, bottom: 36.0, left: 36.0, right: 36.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                    child: Image.asset(
                      "images/Logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    height: 50.0,
                    child: Text(
                      "Welcome Back!",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 260, bottom: 5, left: 0),
                    child: Container(
                      child: Text(
                        "Email:",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ),
                  ),
                  emailPretty,
                  SizedBox(height: 25.0),
                  new Padding(
                    padding: EdgeInsets.only(right: 235, bottom: 5, left: 0),
                    child: Container(
                      child: Text(
                        "Password:",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ),
                  ),
                  passwordPretty,
                  SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.only(right: 160, bottom: 5, left: 0),
                      child: GestureDetector(
                          child: Text("Forgot password? Click here",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 10.0,
                                fontFamily: 'Raleway',
                              )),
                          onTap: () {
                            // do what you need to do when "Click here" gets clicked
                          })),
                  SizedBox(
                    height: 35.0,
                  ),
                  loginButon,
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
