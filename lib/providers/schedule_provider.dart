import 'package:flutter/material.dart';
import '../models/event.dart';

/// ScheduleProvider is a state management class that uses ChangeNotifier.
class ScheduleProvider with ChangeNotifier {
  /// A map storing events for each day of the week.
  /// Each key is a day (e.g., "Monday"), and the value is a list of Event objects.
  final Map<String, List<Event>> weeklyEvents = {
    'Monday': [],
    'Tuesday': [],
    'Wednesday': [],
    'Thursday': [],
    'Friday': [],
    'Saturday': [],
    'Sunday': [],
  };

  /// Tracks the currently selected day in the schedule.
  String selectedDay = 'Monday';

  /// Updates the selected day and notifies listeners
  /// so that dependent widgets can rebuild with the new state.
  void setSelectedDay(String day) {
    selectedDay = day;
    notifyListeners(); // Triggers UI updates for widgets listening to this provider
  }

  /// Adds a new event to the specified day.
  /// Each event includes a title, time, an icon, and a color.
  void addEvent(String day, String title, String time) {
    weeklyEvents[day]!.add(
      Event(
        title, // Title of the event
        time, // Time of the event
        Icons.event, // Default icon for events
        const Color(0xFF64FFDA), // Default accent color for events
      ),
    );
    notifyListeners(); // Notify widgets to update with the new event
  }
}
