// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:revol/login_page.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'Splash_Screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState*
    Splash();
  }

  void Splash() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('One second has passed.'); // Prints after 1 second.
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomePage(),
      //     ));
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage('images/REVOL.png'),
          ),
        ),
      ),
    );
  }
}
