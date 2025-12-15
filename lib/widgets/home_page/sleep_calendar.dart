import 'package:flutter/material.dart';

/// SleepCalendar is a widget that displays a weekly calendar view.
class SleepCalendar extends StatefulWidget {
  const SleepCalendar({super.key});

  @override
  State<SleepCalendar> createState() => _SleepCalendarState();
}

class _SleepCalendarState extends State<SleepCalendar> {
  // Tracks the currently selected day
  int selectedDay = 2;

  @override
  Widget build(BuildContext context) {
    // Days of the week labels
    final days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    // Example dates corresponding to each day
    final dates = [10, 11, 12, 13, 14, 15, 16];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title
        const Text(
          'Your Sleep Calendar',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
          ),
        ),
        const SizedBox(height: 16),

        // Row of days with selectable dates
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(7, (index) {
            return GestureDetector(
              // Handle tap → update selected day
              onTap: () {
                setState(() {
                  selectedDay = index;
                });
              },
              child: Column(
                children: [
                  // Day label
                  Text(
                    days[index],
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedDay == index
                          ? const Color(0xFF1ABC9C) // Highlighted if selected
                          : Colors.white54, // Dimmed if not selected
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Date box
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: selectedDay == index
                          ? const Color(0xFF1ABC9C) // Highlighted background
                          : const Color(
                              0x00000000,
                            ), // Transparent if not selected
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${dates[index]}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: selectedDay == index
                            ? const Color(0xFF000000) // Black text if selected
                            : const Color(
                                0xFFFFFFFF,
                              ), // White text if not selected
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
