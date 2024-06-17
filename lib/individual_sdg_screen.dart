import 'package:flutter/material.dart';

class IndividualSdgScreen extends StatelessWidget {
  final int? sdgId;

  const IndividualSdgScreen({required this.sdgId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG $sdgId'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (sdgId == 1) ...[
                // Content for SDG 1 (No Poverty)
                Text("NO POVERTY"), // Title
                Container(
                  child: Image.asset(
                    "images/SDG1C.png", // Replace with your image path
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "SDG 1 aims to eradicate extreme poverty for all people everywhere.", // Description
                ),
                // Add more widgets for SDG 1 content
              ] else if (sdgId == 2) ...[
                // Content for SDG 2 (Zero Hunger)
                Text("ZERO HUNGER"), // Title
                Container(
                  child: Image.asset(
                    "images/SDGC2.png", // Replace with your image path
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "SDG 2 focuses on ending hunger, achieving food security, and improved nutrition.", // Description
                ),
                // Add more widgets for SDG 2 content
              ] else if (sdgId == 3) ...[
                // Content for SDG 3 (Good Health and Well-being)
                Text("GOOD HEALTH AND WELL-BEING"), // Title
                Container(
                  child: Image.asset(
                    "images/SDG3.jpg", // Replace with your image path
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "SDG 3 strives to ensure healthy lives and promote well-being for all at all ages.", // Description
                ),
                // Add more widgets for SDG 3 content
              ] else if (sdgId == 4) ...[ // Add condition for SDG 4
                Text("QUALITY EDUCATION"), // Title
                Container(
                  child: Image.asset(
                    "images/SDG4C.png", // Replace with your image path
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  "SDG 4 is all about making sure everyone gets a chance to learn and grow through quality education.", // Description
                ),
                // Add more widgets for SDG 4 content
              ] else ...[
                // Placeholder message for missing SDG ID
                Text("No SDG details available for ID: $sdgId"),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
