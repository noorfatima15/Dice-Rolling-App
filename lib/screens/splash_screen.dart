import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.teal,
        child: const Center(
          child: Text('Dice Rolling App',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 24,
              )),
        ),
      ),
    );
  }
}
