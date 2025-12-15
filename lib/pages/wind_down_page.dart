import 'package:flutter/material.dart';

// Import custom widgets for the Wind-Down page
import '../widgets/wind_down_page/header.dart';
import '../widgets/wind_down_page/breathing.dart';
import '../widgets/wind_down_page/journal.dart';
import '../widgets/wind_down_page/bedtime_countdown.dart';
import '../widgets/wind_down_page/sleep_sounds.dart';

/// WindDownPage is the relaxation screen of the app.
class WindDownPage extends StatelessWidget {
  const WindDownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wind-Down Mode",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1ABC9C),
        iconTheme: const IconThemeData(color: Color(0xFFFFFFFF)),
      ),

      // Main body content with scrollable layout
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Intro section
            Intro(),
            const SizedBox(height: 24),

            // Breathing exercise widget
            Breathing(),
            const SizedBox(height: 24),

            // Journaling widget for reflection
            Journaling(),
            const SizedBox(height: 24),

            // Bedtime countdown widget
            BedtimeCountdown(),
            const SizedBox(height: 24),

            // Sleep sounds widget
            SleepSounds(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}