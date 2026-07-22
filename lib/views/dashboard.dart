import 'package:flutter/material.dart';
import 'package:venue_connect/configs/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
     child: Padding(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const SizedBox(height: 20),

          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Find the perfect venue for your next event.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 30),

          TextField(
            decoration: InputDecoration(
              hintText: "Search venues...",
              prefixIcon: const Icon(Icons.search),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Popular Categories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: AppColors.primary,
              ),

              title: const Text("Wedding Venues"),

              subtitle: const Text("25 venues available"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.business,
                color: AppColors.primary,
              ),

              title: const Text("Conference Halls"),

              subtitle: const Text("18 venues available"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.celebration,
                color: AppColors.primary,
              ),

              title: const Text("Party Venues"),

              subtitle: const Text("40 venues available"),
            ),
          ),

        ],
      ),
     ),
    );
  }
}