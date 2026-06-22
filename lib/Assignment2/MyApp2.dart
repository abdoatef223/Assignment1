import 'package:flutter/material.dart';
import 'package:flutterprojects/Assignment2/splash_screen.dart';
import 'package:flutterprojects/Assignment2/login_screen.dart';
import 'package:flutterprojects/Assignment2/Home_Screen.dart';

class Myapp2 extends StatelessWidget {
  const Myapp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}