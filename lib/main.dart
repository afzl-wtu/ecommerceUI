import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/splashScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // To set orientiation always portrait
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relativity',
      // theme: ThemeData(
      //     brightness: Brightness.light,
      //     backgroundColor: Colors.white,
      //     primaryColorLight: Colors.white,
      //     primaryColorBrightness: Brightness.light,
      //     primaryColor: Colors.white),
      home: SplashScreen(),
    );
  }
}
