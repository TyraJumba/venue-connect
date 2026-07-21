import 'package:flutter/material.dart';
import 'package:venue_connect/configs/routes.dart';
import 'package:get/get.dart';
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
      initialRoute: "/",
      getPages: routes,
    );
  }
}
