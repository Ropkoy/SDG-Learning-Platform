import 'package:flutter/material.dart';
import 'package:sdg_learning_platform/sdg_list_screen.dart';
import 'package:sdg_learning_platform/splash_screen.dart';
import 'package:sdg_learning_platform/home_screen.dart';
import 'package:sdg_learning_platform/login_screen.dart';

import 'individual_sdg_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Define initial screen
  String _currentScreen = 'splash';

  // Navigation function to update current screen
  void changeScreen(String screen) {
    setState(() {
      _currentScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_currentScreen) {
      case 'splash':
        return SplashScreen();
      case 'home':
        return HomeScreen();
      case 'sdg_list':
        return SdgListScreen();
      case 'individual_sdg':
        // Assuming you have an sdgId variable
        String? someSdgId;

        return IndividualSdgScreen(sdgId: someSdgId);
      default:
        return ErrorWidget('Unknown App State');
    }
  }
}

