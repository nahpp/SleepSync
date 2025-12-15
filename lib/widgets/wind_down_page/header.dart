import 'package:flutter/material.dart';

/// Intro is a simple widget that displays a short introductory message.
class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center, // Center-align content horizontally
      children: [
        // Introductory text message
        Text(
          'Ease into sleep with a calming nightly ritual.',
          textAlign: TextAlign.center, // Center-align text inside the widget
          style: const TextStyle(
            color: Color(0xFFFFFFFF), // White text color
            fontSize: 20, // Medium-large font size
            fontWeight: FontWeight.bold, // Bold for emphasis
          ),
        ),
        const SizedBox(height: 8), // Adds spacing below the text
      ],
    );
  }
}
