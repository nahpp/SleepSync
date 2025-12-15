import 'package:flutter/material.dart';

/// ScheduleHeader is a simple widget that displays a centered header text.
class ScheduleHeader extends StatelessWidget {
  const ScheduleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Adds vertical spacing above and below the header
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        // Centers the text horizontally
        child: Text(
          'Optimize Your Sleep Schedule', // Header text
          textAlign: TextAlign.center, // Aligns text to the center
          style: const TextStyle(
            color: Color(0xFFFFFFFF), // White text color
            fontSize: 20, // Medium-large font size
            fontWeight: FontWeight.bold, // Bold for emphasis
          ),
        ),
      ),
    );
  }
}