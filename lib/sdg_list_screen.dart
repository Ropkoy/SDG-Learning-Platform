import 'package:flutter/material.dart';
import 'individual_sdg_screen.dart';

class SdgListScreen extends StatelessWidget {
  // list of SDG data
  final List<SdgData> sdgs = [
    SdgData(id: 1, title: "SDG 1 - No Poverty", iconPath: "images/SDG1.png"),
    SdgData(
        id: 2, title: "SDG 2 - Zero Hunger", iconPath: "images/zerohunger.png"),
    SdgData(
        id: 3,
        title: "SDG 3 - Good Health & Well-being",
        iconPath: "images/goodhealth.png"),
    SdgData(id: 4, title: "SDG 4 - Education", iconPath: "images/SDG4.JPG"),
    SdgData(
        id: 5, title: "SDG 5 - Gender Equality", iconPath: "images/SDG5.png"),
    SdgData(
        id: 6,
        title: "SDG 6 - Water & Sanitation",
        iconPath: "images/water.png"),
    SdgData(
        id: 7,
        title: "SDG 7 - Affordable & Clean Energy",
        iconPath: "images/SDG7.png"),
    SdgData(
        id: 8,
        title: "SDG 8 - Decent Work & Economic Growth",
        iconPath: "images/SDG8.png"),
    SdgData(
        id: 9,
        title: "SDG 9 - Industry, Innovation & Infrastructure",
        iconPath: "images/SDG9.png"),
    SdgData(
        id: 10,
        title: "SDG 10 - Reduced Inequalities",
        iconPath: "images/SDG10.png"),
    SdgData(
        id: 11,
        title: "SDG 11 - Sustainable Cities & Communities ",
        iconPath: "images/SDG11.png"),
    SdgData(
        id: 12,
        title: "SDG 12 - Responsible Consumption & Production",
        iconPath: "images/SDG12.png"),
    SdgData(
        id: 13, title: "SDG 13 - Climate Action", iconPath: "images/SDG13.png"),
    SdgData(
        id: 14,
        title: "SDG 14 - Life Below Water",
        iconPath: "images/SDG14.png"),
    SdgData(
        id: 15, title: "SDG 15 - Life on Land", iconPath: "images/SDG15.jpg"),
    SdgData(
        id: 16,
        title: "SDG 16 - Peace, Justice & Strong Institutions",
        iconPath: "images/SDG16.png"),
    SdgData(
        id: 17,
        title: "SDG 17 - Partnerships For The Goals",
        iconPath: "images/SDG17.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All SDGs"),
      ),
      body: ListView.builder(
        itemCount: sdgs.length,
        itemBuilder: (context, index) {
          final sdg = sdgs[index]; // Access current SDG data
          return ListTile(
            leading: Image.asset(sdg.iconPath),
            title: Text(sdg.title),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    IndividualSdgScreen(sdgId: sdg.id), // Pass SDG ID
              ),
            ),
          );
        },
      ),
    );
  }
}

// Class to store SDG data (Content on each SDG)
class SdgData {
  final int id;
  final String title;
  final String iconPath;

  SdgData({required this.id, required this.title, required this.iconPath});
}
