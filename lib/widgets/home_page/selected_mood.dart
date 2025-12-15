import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/mood_provider.dart';

/// SelectedMoodDisplay is a widget that shows the currently selected mood.
class SelectedMoodDisplay extends StatelessWidget {
  const SelectedMoodDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the selected mood from MoodProvider
    final mood = Provider.of<MoodProvider>(context).selectedMood;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2A3139), // Dark background for card
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          const Text(
            'Selected Mood',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xB3FFFFFF), // Semi-transparent white
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),

          // Display the selected mood (emoji + label) if available
          Center(
            child: Text(
              mood != null ? '${mood.emoji} ${mood.label}' : '',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFFFF), // Solid white text
              ),
            ),
          ),
        ],
      ),
    );
  }
}
