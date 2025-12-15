import 'package:flutter/material.dart';

/// TaglineCard is a simple reusable widget that displays
/// a motivational tagline inside a styled container.
class TaglineCard extends StatelessWidget {
  const TaglineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Expands to full width of parent
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF2A3139), // Dark background color
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: const Text(
        'Mood, sleep, and momentum—in sync.', // Tagline text
        textAlign: TextAlign.center, // Center-align text
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFFFFFFFF), // White text color
          fontWeight: FontWeight.w500, // Medium weight for emphasis
        ),
      ),
    );
  }
}
