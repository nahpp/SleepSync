import 'package:flutter/material.dart';

/// Journaling is a widget that provides a simple card for users
/// to reflect on their day. It includes a prompt, a text field
/// for writing thoughts, and a button to save the entry.
class Journaling extends StatelessWidget {
  const Journaling({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF262D34), // Dark background card
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Inner spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center-align content
          children: [
            // Prompt text
            Text(
              'What went well today?',
              textAlign: TextAlign.center, // Center-align text
              style: const TextStyle(
                color: Color(0xFFFFFFFF), // White text color
                fontSize: 22, // Larger font size for emphasis
                fontWeight: FontWeight.bold, // Bold weight
              ),
            ),
            const SizedBox(height: 8),

            // Text field for journaling input
            SizedBox(
              width: double.infinity, // Full width
              child: TextField(
                style: const TextStyle(
                  color: Color(0xFFFFFFFF), // White text
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Write your thoughts here...', // Placeholder text
                  hintStyle: TextStyle(
                    color: const Color(0xFFFFFFFF), // White hint text
                    fontSize: 16,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white54,
                    ), // Subtle border
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF1ABC9C),
                    ), // Teal border when focused
                  ),
                ),
                maxLines: 2, // Allows up to 2 lines of text
              ),
            ),
            const SizedBox(height: 16),

            // Save button
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1ABC9C), // Teal background
                foregroundColor: const Color(0xFFFFFFFF), // White text/icon
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: const Text('Save Entry'),
            ),
          ],
        ),
      ),
    );
  }
}
