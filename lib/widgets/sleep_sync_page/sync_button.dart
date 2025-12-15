import 'package:flutter/material.dart';

/// SyncButton is a reusable widget that displays a styled button
/// with an icon and label. It is intended to trigger synchronization
/// of the user's sleep schedule when pressed.
class SyncButton extends StatelessWidget {
  const SyncButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      // Action when the button is pressed
      // This can later be connected to logic for syncing schedules.
      onPressed: () {},

      // Icon displayed on the left side of the button
      icon: const Icon(
        Icons.sync, // Sync icon
        color: Color(0xFFFFFFFF), // White icon color
      ),

      // Label text displayed next to the icon
      label: const Text(
        'Sync Sleep Schedule',
        style: TextStyle(
          color: Color(0xFFFFFFFF), // White text color
        ),
      ),

      // Styling for the button
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1ABC9C), // Teal background color
        foregroundColor: const Color(0xFF000000), // Black ripple effect color
        padding: const EdgeInsets.symmetric(
          vertical: 12, // Vertical padding
          horizontal: 24, // Horizontal padding
        ),
      ),
    );
  }
}
