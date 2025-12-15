import 'package:flutter/material.dart';
import '../models/mood.dart';

/// MoodProvider is a state management class that uses ChangeNotifier.
class MoodProvider extends ChangeNotifier {
  // Private variable to hold the currently selected mood
  Mood? _selectedMood;

  /// Public getter to access the selected mood
  Mood? get selectedMood => _selectedMood;

  /// Updates the selected mood and notifies listeners
  /// so that dependent widgets can rebuild with the new state.
  void updateMood(Mood mood) {
    _selectedMood = mood;
    notifyListeners(); // Triggers UI updates for widgets listening to this provider
  }
}