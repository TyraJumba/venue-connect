import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_connect/configs/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.foreground,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
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
                  size: 70,
                  color: AppColors.primary,
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Center(
              child: Text(
                "Register to continue",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                prefixIcon: const Icon(Icons.person),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),


            const SizedBox(height: 20),

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

            const SizedBox(height: 20),

            TextField(
              obscureText: true,

              decoration: InputDecoration(
                labelText: "Confirm Password",
                prefixIcon: const Icon(Icons.lock_outline), 

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
                  "REGISTER",
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
                  "Already have an account?",
                ),

                TextButton(
                  onPressed: () {
                    Get.back();
                  },

                  child: Text(
                    "Login",
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
  