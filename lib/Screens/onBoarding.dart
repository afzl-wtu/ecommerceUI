import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:relativity_d1/Screens/selectLogin.dart';

class OnBoarding extends StatefulWidget {
  static final style = TextStyle(
    color: Colors.purple.shade600,
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int page = 0;
  final liquidController = LiquidController();

  final pages = [
    Container(
      width: double.infinity,
      color: Color(0xffF3F4F6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/boarding01.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Hi",
                style: OnBoarding.style,
              ),
              Text(
                "It's Me",
                style: OnBoarding.style,
              ),
              Text(
                "Tasadduq",
                style: OnBoarding.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Color(0xff7DCCD9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/boarding2.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Take a",
                style: OnBoarding.style,
              ),
              Text(
                "look at",
                style: OnBoarding.style,
              ),
              Text(
                "Swipe",
                style: OnBoarding.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Color(0xff5996CD),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/boarding3.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Online",
                style: OnBoarding.style,
              ),
              Text(
                "Shoping",
                style: OnBoarding.style,
              ),
              Text(
                "Facilities",
                style: OnBoarding.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Color(0xffFCD999),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/boarding4.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Team Relativity",
                style: OnBoarding.style,
              ),
              Text(
                "Shop",
                style: OnBoarding.style,
              ),
              Text(
                "Online",
                style: OnBoarding.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Color(0xffF87273),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/boarding5.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Click",
                style: OnBoarding.style,
              ),
              Text(
                "Done to next ",
                style: OnBoarding.style,
              ),
              Text(
                "Thank You",
                style: OnBoarding.style,
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LiquidSwipe(
            pages: pages,
            onPageChangeCallback: pageChangeCallback,
            waveType: WaveType.liquidReveal,
            liquidController: liquidController,
            ignoreUserGestureWhileAnimating: true,
            enableLoop: false,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(pages.length, _buildDot),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: FlatButton(
                onPressed: () {
                  liquidController.currentPage <= 3
                      ? liquidController.jumpToPage(
                          page: liquidController.currentPage + 1)
                      : Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => SelectLogin(),
                          ),
                        );
                },
                child: FutureBuilder(
                    future: Future.delayed(Duration(milliseconds: 300)),
                    builder: (ctx, snap) => snap.connectionState ==
                            ConnectionState.waiting
                        ? Text('Loading...')
                        : Text(
                            liquidController.currentPage <= 3 ? "Next" : "Done",
                          )),
                color: Colors.white.withOpacity(0.01),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: FlatButton(
                onPressed: () {
                  liquidController.animateToPage(
                      page: pages.length - 1, duration: 500);
                },
                child: Text("Skip"),
                color: Colors.white.withOpacity(0.01),
              ),
            ),
          )
        ],
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
