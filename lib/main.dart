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
      debugShowCheckedModeBanner: false,
      title: 'Venue Connect',
      home: const Login(),
    );
  }
}