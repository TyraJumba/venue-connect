import 'package:flutter/material.dart';
import 'package:venue_connect/configs/colors.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const SizedBox(height: 20),

          const Text(
            "My Bookings",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: AppColors.primary,
              ),

              title: const Text("Wedding Reception"),

              subtitle: const Text("Safari Park Hotel\n12 August 2026"),
            ),
          ),

          const SizedBox(height: 15),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: AppColors.primary,
              ),

              title: const Text("Business Meeting"),

              subtitle: const Text("KICC\n20 September 2026"),
            ),
          ),

        ],
      ),
    );
  }
}