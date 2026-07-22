import 'package:flutter/material.dart';
import 'package:venue_connect/configs/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),

      child: Column(

        children: [

          const SizedBox(height: 30),

            const Icon(
              Icons.person,
              color: AppColors.primary,
              size: 50,
            ),

          const SizedBox(height: 20),

          const Text(
            "Tyra Jumba",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Text(
            "tyra@email.com",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 30),

          ListTile(
            leading: Icon(
              Icons.edit,
              color: AppColors.primary,
            ),

            title: const Text("Edit Profile"),
          ),

          ListTile(
            leading: Icon(
              Icons.lock,
              color: AppColors.primary,
            ),

            title: const Text("Change Password"),
          ),

          ListTile(
            leading: const Icon(
              Icons.logout,
              color: AppColors.primary,
            ),

            title: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}