import 'package:flutter/material.dart';
import 'package:sdg_learning_platform/sdg_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn About SDGs!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let's explore the Sustainable Development Goals!",
              style: TextStyle(fontSize: 25.0),
            ),
            const SizedBox(height: 20.0), // Add spacing between text and image
            Container(
              height: 500.0,
              width: 700.0,
              child: Image.asset(
                "images/SDGIcon.png",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SdgListScreen()),
                  ),
                  child: const Text("Explore SDGs"),
                ),
                const SizedBox(width: 10.0), // Add spacing between buttons
                TextButton(
                  onPressed: () {},
                  child: const Text(" More on Each SDG "),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
