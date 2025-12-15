import 'package:flutter/material.dart';
import '../../../models/event.dart';

/// EventCard is a widget that displays a day's events inside an expandable card.
class EventCard extends StatelessWidget {
  /// The day this card represents
  final String day;

  /// List of events scheduled for the given day.
  final List<Event> events;

  /// Callback triggered when the card is expanded.
  final VoidCallback onExpand;

  const EventCard({
    super.key,
    required this.day,
    required this.events,
    required this.onExpand,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ), // Vertical spacing between cards
      color: const Color(0xFF262D34), // Dark background color for card
      child: ExpansionTile(
        // Title shows day and event count
        title: Text(
          '$day (${events.isEmpty ? "No events" : "${events.length} Event${events.length > 1 ? "s" : ""} scheduled"})',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF), // White text
          ),
        ),

        // Icon colors for expanded/collapsed states
        iconColor: const Color(0xFF1ABC9C), // Teal when expanded
        collapsedIconColor: const Color(0xFFFFFFFF), // White when collapsed
        // Trigger callback when expansion state changes
        onExpansionChanged: (expanded) {
          if (expanded) onExpand();
        },

        // Children: list of events displayed when expanded
        children: events.map((event) {
          return ListTile(
            leading: Icon(event.icon, color: event.color), // Event icon
            title: Text(
              event.title, // Event title
              style: const TextStyle(color: Color(0xFFFFFFFF)),
            ),
            subtitle: Text(
              event.time, // Event time
              style: const TextStyle(
                color: Color(0xB3FFFFFF),
              ), // Semi-transparent white
            ),
          );
        }).toList(),
      ),
    );
  }
}
