import 'package:flutter/material.dart';
import '../../pages/sleep_sync_page.dart';
import '../../pages/wind_down_page.dart';

/// ModeCards is a widget that displays two selectable cards side by side:
class ModeCards extends StatelessWidget {
  const ModeCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sleep Sync Mode card
        Expanded(
          child: _ModeCard(
            icon: ClipOval(
              child: Image.asset(
                'assets/images/ss_mode.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: 'Sleep Sync Mode',
            description:
                'SleepSync Mode recommends nap windows and sleep patterns tailored to your schedule and rhythm.',
            onEnter: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SleepSyncPage()),
              );
            },
          ),
        ),
        const SizedBox(width: 16),

        // Wind-Down Mode card
        Expanded(
          child: _ModeCard(
            icon: ClipOval(
              child: Image.asset(
                'assets/images/wd_mode.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: 'Wind-Down Mode',
            description:
                'Wind-Down Mode guides you through calming activities to ease stress and prepare your mind for sleep.',
            onEnter: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WindDownPage()),
              );
            },
          ),
        ),
      ],
    );
  }
}

/// _ModeCard is a reusable widget representing a single mode card.
/// It contains:
/// - An icon (image or widget)
/// - A title
/// - An info button (shows description in a dialog)
/// - An "Enter" button to navigate to the mode's page
class _ModeCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final VoidCallback onEnter;

  const _ModeCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.onEnter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A3139), // Dark background for card
        borderRadius: BorderRadius.circular(16), // Rounded corners
      ),
      child: Column(
        children: [
          // Mode icon
          icon,
          const SizedBox(height: 16),

          // Title + info button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 4),

              // Info button (shows description in a dialog)
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: const Color(0xFF2A3139),
                      title: Text(
                        title,
                        style: const TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      content: Text(
                        description,
                        style: const TextStyle(color: Color(0xB3FFFFFF)),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            'Close',
                            style: TextStyle(color: Color(0xFF1ABC9C)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0x89FFFFFF),
                      width: 1.5,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'i', // Info indicator
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // "Enter" button to navigate to the mode's page
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onEnter,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1ABC9C), // Teal accent color
                foregroundColor: const Color(0xFF000000),
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Enter',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}