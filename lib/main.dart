import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/welcome_page.dart';
import 'package:sleep_sync/providers/mood_provider.dart';
import 'package:sleep_sync/providers/schedule_provider.dart';

/// Entry point of the application.
/// Wraps the app with [MultiProvider] to supply global state management
/// for mood tracking and scheduling.
void main() {
  runApp(
    MultiProvider(
      providers: [
        // Provides mood state management across the app
        ChangeNotifierProvider(create: (_) => MoodProvider()),

        // Provides schedule state management across the app
        ChangeNotifierProvider(create: (_) => ScheduleProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

/// Root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      theme: ThemeData(
        fontFamily: 'Roboto', // Global font family
        scaffoldBackgroundColor: const Color(0xFF212121), // Dark background
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF1ABC9C), // Teal accent color
        ),
      ),
      home: const WelcomePage(), // Initial screen of the app
    );
  }
}
