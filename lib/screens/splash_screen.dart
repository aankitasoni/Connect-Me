import 'dart:async';


import 'package:flutter/material.dart';
import 'package:media/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context as BuildContext,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child:  Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: const Image(
              image: AssetImage('icons/connect.png',
              ),
              width: 250,
              height: 250,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black26,
    );
  }
}
