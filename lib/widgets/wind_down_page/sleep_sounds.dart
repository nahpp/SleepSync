import 'package:flutter/material.dart';

/// SleepSounds is a widget that provides a toggle switch
/// for enabling or disabling ambient sleep sounds.
class SleepSounds extends StatelessWidget {
  const SleepSounds({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF262D34), // Dark background card
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Inner spacing
        child: Row(
          children: [
            // Left side: title and description
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                children: [
                  // Title text
                  Text(
                    'Sleep Sounds',
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF), // White text
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Subtitle / description
                  Text(
                    'Ambient sounds for better sleep.',
                    style: TextStyle(
                      color: Colors.white, // White text
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // Right side: toggle switch
            Switch(
              value: false, // Default state (off)
              onChanged: (val) {},
              activeThumbColor: const Color(
                0xFF1ABC9C,
              ), // Teal thumb when active
              activeTrackColor: const Color(
                0xFFFFFFFF,
              ), // White track when active
              inactiveThumbColor: const Color(
                0xFFFFFFFF,
              ), // White thumb when inactive
              inactiveTrackColor: const Color(
                0xFF1ABC9C,
              ), // Teal track when inactive
            ),
          ],
        ),
      ),
    );
  }
}
