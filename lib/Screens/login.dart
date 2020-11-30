import 'package:flutter/material.dart';
import 'package:relativity_d1/Screens/signup.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/buisness.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: mediaQuery.size.height * 1 / 8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Bag.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 1 / 6,
                    left: mediaQuery.size.width * 1 / 18,
                    right: mediaQuery.size.width * 1 / 18,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                        ),
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 1 / 50,
                    left: mediaQuery.size.width * 1 / 18,
                    right: mediaQuery.size.width * 1 / 18,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.vpn_key,
                        ),
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 1 / 60,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Forget Password? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 1 / 50,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => Signup(),
                      ),
                    );
                  },
                  child: Text(
                    'Not Have Acount? Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: mediaQuery.size.height * 1 / 6.2,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 1500),
                          transitionsBuilder:
                              (context, animation, animationTime, child) =>
                                  ScaleTransition(
                                    alignment: Alignment.center,
                                    scale: animation,
                                    child: child,
                                  ),
                          pageBuilder: (context, animation, animationTime) =>
                              HomeScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: mediaQuery.size.width * 1 / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.cyanAccent),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.cyanAccent,
                          Colors.indigoAccent,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
