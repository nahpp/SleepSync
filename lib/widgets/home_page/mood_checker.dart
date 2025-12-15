import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/mood.dart';
import '../../providers/mood_provider.dart';

/// MoodChecker is a widget that allows users to select their current mood.
class MoodChecker extends StatefulWidget {
  /// Optional callback that is triggered when a mood is selected.
  final void Function(Mood)? onMoodSelected;

  const MoodChecker({super.key, this.onMoodSelected});

  @override
  State<MoodChecker> createState() => _MoodCheckerState();
}

class _MoodCheckerState extends State<MoodChecker> {
  // Tracks the index of the currently selected mood
  int selectedMoodIndex = -1;

  /// List of available moods with emoji, label, and color.
  final List<Mood> moods = [
    Mood('😃', 'Happy', const Color(0xFFFF6B9D)),
    Mood('🥲', 'Sad', const Color(0xFFFFC107)),
    Mood('😡', 'Angry', const Color(0xFFFF5252)),
    Mood('😴', 'Tired', const Color(0xFFFF9800)),
    Mood('😵‍💫', 'Dizzy', const Color(0xFFFFC107)),
  ];

  @override
  Widget build(BuildContext context) {
    // Access MoodProvider to update the selected mood globally
    final moodProvider = Provider.of<MoodProvider>(context, listen: false);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2A3139), // Dark background for card
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title text
          const Text(
            'Mood Checker',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
          ),
          const SizedBox(height: 16),

          // Row of mood options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(moods.length, (index) {
              return GestureDetector(
                // When a mood is tapped
                onTap: () {
                  setState(() {
                    selectedMoodIndex = index; // Update selected index
                  });
                  moodProvider.updateMood(
                    moods[index],
                  ); // Update provider state
                  if (widget.onMoodSelected != null) {
                    widget.onMoodSelected!(
                      moods[index],
                    ); // Trigger callback if provided
                  }
                },
                child: Column(
                  children: [
                    // Mood emoji inside a colored circle
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: moods[index].color,
                        shape: BoxShape.circle,
                        // Highlight border if selected
                        border: selectedMoodIndex == index
                            ? Border.all(
                                color: const Color(0xFF1ABC9C),
                                width: 3,
                              )
                            : null,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        moods[index].emoji,
                        style: const TextStyle(fontSize: 36),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Mood label text
                    Text(
                      moods[index].label,
                      style: TextStyle(
                        fontSize: 14,
                        color: selectedMoodIndex == index
                            ? const Color(0xFF1ABC9C) // Highlighted if selected
                            : const Color(
                                0xB3FFFFFF,
                              ), // Semi-transparent if not selected
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}