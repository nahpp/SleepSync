import 'package:flutter/material.dart';

/// HeaderSection is a reusable widget that displays a greeting
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Places the greeting text on the left and profile image on the right
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Greeting section: user name and message
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe,', // Placeholder for user name
              style: TextStyle(
                fontSize: 16,
                color: Color(0xB3FFFFFF), // Semi-transparent white
                fontWeight: FontWeight.w400, // Regular weight
              ),
            ),
            Text(
              'Good Morning', // Greeting message
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFFFFFFF), // Solid white
                fontWeight: FontWeight.w600, // Semi-bold weight
              ),
            ),
          ],
        ),

        // Profile image container
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Circular profile picture
            border: Border.all(
              color: const Color(0x3CFFFFFF), // Semi-transparent border
              width: 2,
            ),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/profile.png',
              ), // Local asset image
              fit: BoxFit.cover, // Ensures image fills the circle
            ),
          ),
        ),
      ],
    );
  }
}
