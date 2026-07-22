import 'package:flutter/material.dart';
import 'package:venue_connect/configs/colors.dart';

class VenuesScreen extends StatelessWidget {
  const VenuesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),

      child: ListView(

        children: [

          const Text(
            "Available Venues",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                color: AppColors.primary,
              ),

              title: const Text("Safari Park Hotel"),

              subtitle: const Text("Nairobi"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                color: AppColors.primary,
              ),

              title: const Text("KICC"),

              subtitle: const Text("Nairobi CBD"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                color: AppColors.primary,
              ),

              title: const Text("Trademark Hotel"),

              subtitle: const Text("Village Market"),
            ),
          ),

        ],
      ),
    );
  }
}