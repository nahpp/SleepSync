import 'package:flutter/material.dart';

/// AddEventButton is a floating action button that allows users
/// to add a new event to the selected day.
class AddEventButton extends StatelessWidget {
  /// The currently selected day
  final String selectedDay;

  /// Callback function to add an event.
  /// Parameters: day, title, time.
  final Function(String, String, String) onAdd;

  const AddEventButton({
    super.key,
    required this.selectedDay,
    required this.onAdd,
  });

  /// Displays a modal bottom sheet for adding a new event.
  void _showAddEventSheet(BuildContext context) {
    // Controllers to capture user input
    final titleController = TextEditingController();
    final timeController = TextEditingController();

    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF212121), // Dark background
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ), // Rounded top corners
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Wrap content height
          children: [
            // Title of the bottom sheet
            Text(
              'Add Event to $selectedDay',
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),

            // Input field for event title
            TextField(
              controller: titleController,
              style: const TextStyle(color: Color(0xFFFFFFFF)),
              decoration: const InputDecoration(
                labelText: 'Event Title',
                labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                ),
              ),
            ),

            // Input field for event time
            TextField(
              controller: timeController,
              style: const TextStyle(color: Color(0xFFFFFFFF)),
              decoration: const InputDecoration(
                labelText: 'Time (e.g. 2:00 PM - 3:00 PM)',
                labelStyle: TextStyle(color: Color(0xFFFFFFFF)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Button to confirm and add event
            ElevatedButton(
              onPressed: () {
                final title = titleController.text.trim();
                final time = timeController.text.trim();

                // Only add event if both fields are filled
                if (title.isNotEmpty && time.isNotEmpty) {
                  onAdd(selectedDay, title, time); // Call callback
                  Navigator.pop(context); // Close bottom sheet
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1ABC9C), // Teal accent
                foregroundColor: const Color(0xFFFFFFFF), // White text
              ),
              child: const Text('Add Event'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Floating action button that triggers the add event sheet
    return FloatingActionButton(
      onPressed: () => _showAddEventSheet(context),
      backgroundColor: const Color(0xFF1ABC9C), // Teal accent
      tooltip: 'Add Event', // Tooltip shown on hover/long press
      child: const Icon(Icons.add, color: Color(0xFFFFFFFF)), // Plus icon
    );
  }
}
