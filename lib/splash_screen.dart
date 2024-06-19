import 'package:flutter/material.dart';
import 'dart:async';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      try {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } catch (error) {
        print("Error navigating to home screen: $error");
        // Handle navigation error
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Constrain the width and height of the container to fit the screen
        constraints: BoxConstraints.expand(),
        child: Stack(
          // Use Stack to position elements on top of each other
          children: [
            // Center the image horizontally and vertically
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            Center(
              // Center content vertically within the Stack (text and progress indicator)
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "", // You can add your app name or tagline here
                    style: TextStyle(fontSize: 50.0),
                  ),
                  const SizedBox(height: 20.0),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
