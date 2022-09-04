// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:revol/home.dart';
import 'package:revol/login_page.dart';
import 'package:revol/splashscreen.dart';

void main() {
  runApp(revol());
}

class revol extends StatelessWidget {
  const revol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      LoginPage.id: (context) => LoginPage(),
      HomePage.id: (context) => HomePage()
    }, home: SplashScreen());
  }
}
/*
Scaffold(
        body: Center(
          child: Text('REVOL'),
        ),
      ),
*/      