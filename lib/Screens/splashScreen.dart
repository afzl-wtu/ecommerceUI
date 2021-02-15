import 'package:flutter/material.dart';

import 'dart:async';

import './onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 2000), navigatorPage);
  }

  // To navigate layout change
  void navigatorPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => OnBoarding(),
      ),
    );
  }

  // Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 19.0,
                      ),
                    ),
                    Hero(
                      tag: "tsdq",
                      child: Text(
                        "Relativity",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35.0,
                          letterSpacing: 0.8,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
