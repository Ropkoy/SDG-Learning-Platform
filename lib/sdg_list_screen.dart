import 'package:flutter/material.dart';

import 'individual_sdg_screen.dart';

class SdgListScreen extends StatelessWidget {
  // Sample SDG data with non-constant variables
  final List<Sdg> sdgs = [
    Sdg(number: 1, title: 'No Poverty', image: 'images/SDG1'),

    Sdg(number: 2, title: 'Zero Hunger', image: 'images/zeroHunger'),
    // ... Add entries for all 17 SDGs using constant image paths
    Sdg(
      number: 17,
      title: 'Partnerships for the Goals',
      image: 'images/SDG17.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SDGs'),
      ),
      body: ListView.builder(
        itemCount: sdgs.length,
        itemBuilder: (context, index) {
          final sdg = sdgs[index]; // Get the current SDG object from the list
          return SdgListItem(
            sdg: sdg,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => IndividualSdgScreen(
                        sdg: sdg,
                        sdgId: null,
                      )),
            ),
          ); // Pass the SDG object to the list item widget
        },
      ),
    );
  }
}

// Model class to represent an SDG (Sustainable Development Goal)
class Sdg {
  final int number;
  final String title;
  final String image;

  const Sdg({required this.number, required this.title, required this.image});
}

// Widget to display a single SDG list item
class SdgListItem extends StatelessWidget {
  final Sdg sdg;

  const SdgListItem(
      {Key? key, required this.sdg, required Future Function() onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(sdg.image), // Set the image from SDG data
      ),
      title: Text(sdg.title), // Set the title from SDG data
      onTap: () {
        // Implement navigation to individual SDG screen (replace with your logic)
        // For example:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => IndividualSdgScreen(sdg: sdg)),
        // );
      },
    );
  }
}
