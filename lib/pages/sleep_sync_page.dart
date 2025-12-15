import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import custom widgets for the SleepSync page
import '../widgets/sleep_sync_page/header.dart';
import '../widgets/sleep_sync_page/weekly_schedule.dart';
import '../widgets/sleep_sync_page/sync_button.dart';
import '../widgets/sleep_sync_page/add_event_button.dart';

// Import provider for managing schedule state
import '../providers/schedule_provider.dart';

/// SleepSyncPage is the main screen for managing sleep schedules.
class SleepSyncPage extends StatefulWidget {
  const SleepSyncPage({super.key});

  @override
  State<SleepSyncPage> createState() => _SleepSyncPageState();
}

class _SleepSyncPageState extends State<SleepSyncPage> {
  @override
  Widget build(BuildContext context) {
    // Access the schedule provider to get and update weekly events
    final scheduleProvider = Provider.of<ScheduleProvider>(context);

    return Scaffold(
      // App bar with title and styling
      appBar: AppBar(
        title: const Text(
          "SleepSync Mode",
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

      // Main body content
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header section
                    const ScheduleHeader(),
                    const SizedBox(height: 24),

                    // Weekly schedule widget showing events
                    WeeklySchedule(
                      events: scheduleProvider.weeklyEvents,
                      onDaySelected: scheduleProvider.setSelectedDay,
                    ),
                    const SizedBox(height: 28),

                    // Sync button to synchronize schedules
                    const SyncButton(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Floating action button to add new events
      floatingActionButton: AddEventButton(
        selectedDay: scheduleProvider.selectedDay,
        onAdd: scheduleProvider.addEvent,
      ),
    );
  }
}