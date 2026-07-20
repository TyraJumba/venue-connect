import 'package:flutter/material.dart';
import 'views/login.dart';

void main() {
  runApp(const VenueConnect());
}

class VenueConnect extends StatelessWidget {
  const VenueConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venue Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.white,
      ),
      home: const LoginScreen(),
    );
  }
}