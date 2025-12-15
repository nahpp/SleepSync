import 'package:flutter/material.dart';

/// BedtimeCountdown is a widget that displays a countdown timer
/// to bedtime with a progress indicator, a description, and a button
/// to set bedtime. It provides a visual reminder for users to prepare for sleep.
class BedtimeCountdown extends StatelessWidget {
  const BedtimeCountdown({super.key});

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
              'Bedtime Countdown',
              style: const TextStyle(
                color: Color(0xFFFFFFFF), // White text
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Subtitle / description
            Text(
              'Visual timer with gentle sleep reminders.',
              style: TextStyle(color: const Color(0xFFFFFFFF), fontSize: 16),
            ),
            const SizedBox(height: 16),

            // Progress bar showing countdown progress
            LinearProgressIndicator(
              value: 0.3, // Example progress value (30%)
              backgroundColor: const Color(0xFF616161), // Grey background
              color: const Color(0xFF1ABC9C), // Teal progress color
            ),
            const SizedBox(height: 8),

            // Remaining time text
            const Text(
              '1h 23m remaining',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),

            // Button to set bedtime
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
              child: const Text('Set Bedtime'),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
