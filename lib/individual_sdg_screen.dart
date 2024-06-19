import 'package:flutter/material.dart';

class IndividualSdgScreen extends StatelessWidget {
  final int? sdgId; // Constructor parameter

  const IndividualSdgScreen({required this.sdgId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Education"), // Title based on SDG (replace with dynamic title based on sdgId)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SDG 4 - Education"), // SDG title
            // Wrap Image.asset with SizedBox to set a fixed size
            SizedBox(
              width: 800.0, // Adjust width as desired
              height: 400.0, // Adjust height as desired
              child: Image.asset(
                "images/SDG4C.png",
              ),
            ),
            Text(
              "SDG 4 is all about making sure everyone gets a chance to learn and grow through quality education.",
            ), // SDG description
            // Add widgets for more content on SDG 4
          ],
        ),
      ),
    );
  }
}
