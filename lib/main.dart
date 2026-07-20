import 'package:flutter/material.dart';
import 'package:venue_connect/views/login.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const VenueConnectApp());
}

class VenueConnectApp extends StatefulWidget {
  const VenueConnectApp({super.key});

  @override
  State<VenueConnectApp> createState() => _VenueConnectAppState();
}

class _VenueConnectAppState extends State<VenueConnectApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: "/",
      getPages: [],
    );
  }
}
