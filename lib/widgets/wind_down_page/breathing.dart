import 'package:flutter/material.dart';

/// Breathing is a widget that provides a guided breathing exercise card.
class Breathing extends StatelessWidget {
  const Breathing({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF262D34), // Dark background card
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Inner spacing
        child: Column(
          children: [
            // Title text
            Text(
              'Guided Breathing',
              style: TextStyle(
                color: const Color(0xFFFFFFFF), // White text
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Subtitle / description
            Text(
              'Simple, calming exercises with visual pacing.',
              style: TextStyle(
                color: const Color(0xFFE0E0E0), // Light grey text
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),

            // Circle avatar showing breathing instruction
            CircleAvatar(
              radius: 60, // Circle size
              backgroundColor: const Color(0xFF1ABC9C), // Teal background
              child: Text(
                'Breathe In\n4 seconds', // Breathing prompt
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFFFFFFF), // White text
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Button to start breathing exercise
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1ABC9C), // Teal background
                foregroundColor: const Color(0xFFFFFFFF), // White text
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Start Breathing'),
            ),
          ],
        ),
      ),
    );
  }
}
