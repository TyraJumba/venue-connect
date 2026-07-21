import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_connect/configs/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Venue Connect"),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.foreground,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(
                  Icons.location_city,
                  size: 90,
                  color: AppColors.primary,
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "Login to book your perfect venue",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 40),

            TextField(
              decoration: InputDecoration(
                labelText: "Email Address",
                prefixIcon: const Icon(Icons.email),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              obscureText: true,

              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.foreground,
                ),

                onPressed: () {
                  Get.toNamed("/home");
                },

                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Text(
                  "Don't have an account?",
                ),

                TextButton(
                  onPressed: () {
                    Get.toNamed("/registration");
                  },

                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    ),
   );
  }
}