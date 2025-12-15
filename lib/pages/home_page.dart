import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import custom widgets for the Home page
import '../widgets/home_page/header.dart';
import '../widgets/home_page/tagline.dart';
import '../widgets/home_page/sleep_calendar.dart';
import '../widgets/home_page/mood_checker.dart';
import '../widgets/home_page/selected_mood.dart';
import '../widgets/home_page/mode.dart';

// Import the MoodProvider for state management
import '../providers/mood_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Tracks the current navigation index
  int currentNavIndex = 0;

  /// Updates the navigation index when user taps on a navigation item.
  void updateNavIndex(int index) {
    setState(() {
      currentNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Access MoodProvider to update and display mood state
    final moodProvider = Provider.of<MoodProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // App header section
                    const HeaderSection(),
                    const SizedBox(height: 24),

                    // Tagline
                    const TaglineCard(),
                    const SizedBox(height: 28),

                    // Sleep calendar widget
                    const SleepCalendar(),
                    const SizedBox(height: 28),

                    // Mood checker widget
                    MoodChecker(onMoodSelected: moodProvider.updateMood),
                    const SizedBox(height: 24),

                    // Displays the currently selected mood
                    const SelectedMoodDisplay(),
                    const SizedBox(height: 24),

                    // Mode cards
                    const ModeCards(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
