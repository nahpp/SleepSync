import 'package:flutter/material.dart';
import '../../../models/event.dart';
import 'event.dart';

/// WeeklySchedule is a widget that displays a list of EventCards,
/// one for each day of the week. It shows the events scheduled per day
/// and allows the user to select a day when its card is expanded.
class WeeklySchedule extends StatelessWidget {
  /// A map of days to their corresponding list of events.
  final Map<String, List<Event>> events;

  /// Callback triggered when a day is selected.
  /// Provides the selected day as a string.
  final Function(String) onDaySelected;

  const WeeklySchedule({
    super.key,
    required this.events,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // Iterate through the map entries.
      children: events.entries.map((entry) {
        return EventCard(
          day: entry.key, // Day name
          events: entry.value, // List of events for that day
          onExpand: () =>
              onDaySelected(entry.key), // Trigger callback when expanded
        );
      }).toList(),
    );
  }
}
