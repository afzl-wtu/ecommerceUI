import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:relativity_d1/Screens/home.dart';
import 'package:relativity_d1/Screens/login.dart';
import 'package:relativity_d1/Screens/signup.dart';

class SelectLogin extends StatefulWidget {
  @override
  _SelectLoginState createState() => _SelectLoginState();
}

class _SelectLoginState extends State<SelectLogin> {
  final List<String> imgList = [
    'assets/images/shop1.webp',
    'assets/images/shop02.webp',
    'assets/images/shop3.webp',
    'assets/images/shop04.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.height,
        child: Stack(
          children: [
            Builder(
              builder: (context) {
                return Carousel(
                  boxFit: BoxFit.fitHeight,
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  showIndicator: false,
                  images: imgList
                      .map(
                        (e) => Image.asset(
                          e,
                          fit: BoxFit.cover,
                        ),
                      )
                      .toList(),
                );
              },
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: mediaQuery.size.height * 1 / 8),
                      child: Text(
                        ' Team Relativity',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 32.0,
                          letterSpacing: 0.4,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: mediaQuery.size.width * 1 / 4,
                      right: mediaQuery.size.width * 1 / 4,
                      top: mediaQuery.size.height * 1 / 5,
                      bottom: mediaQuery.size.height * 1 / 90,
                    ),
                    child: Container(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Text(
                    "Get best work from Team Relativity",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQuery.size.height * 1 / 4),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => Signup(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: mediaQuery.size.width * 1 / 1.2,
                        child: Center(
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: mediaQuery.size.height * 1 / 50,
                      bottom: mediaQuery.size.height * 1 / 50,
                      left: mediaQuery.size.width * 1 / 6.8,
                      right: mediaQuery.size.width * 1 / 6.8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  transitionDuration:
                                      Duration(milliseconds: 400),
                                  transitionsBuilder: (context, animation,
                                          animationTime, child) =>
                                      ScaleTransition(
                                        alignment: Alignment.center,
                                        scale: animation,
                                        child: child,
                                      ),
                                  pageBuilder:
                                      (context, animation, animationTime) =>
                                          HomeScreen()),
                            );
                          },
                          child: Text(
                            'OR SKIP',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => Login(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: mediaQuery.size.width * 1 / 1.2,
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
