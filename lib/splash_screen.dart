import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10),
        _navigateToHomeScreen); // Call the private method
  }

  void _navigateToHomeScreen() {
    Navigator.pushReplacement(
      // Access Navigator from context within the StatefulWidget
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: const Center(
        child: Image(
            image: AssetImage('images/logo.png')), // Use AssetImage constructor
      ),
    );
  }
}
