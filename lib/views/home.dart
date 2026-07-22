import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:venue_connect/configs/colors.dart';

import 'package:venue_connect/views/dashboard.dart';
import 'package:venue_connect/views/venues.dart';
import 'package:venue_connect/views/profile.dart';
import 'package:venue_connect/views/my_bookings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State <HomeScreen> createState() =>  _HomeScreenState();
}
class  _HomeScreenState extends State <HomeScreen> {
   int currentIndex = 0;

  Widget getActivePage() {
    switch (currentIndex) {
      case 0:
        return const DashboardScreen();
      case 1:
        return const VenuesScreen();
      case 2:
        return const MyBookingsScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const VenuesScreen();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: getActivePage(),

     bottomNavigationBar:  CurvedNavigationBar(
    backgroundColor: Colors.white,
    color: AppColors.primary,
    buttonBackgroundColor: AppColors.primary,
    items:  const <Widget>[
      Icon(Icons.home, size: 30, color: Colors.white),
      Icon(Icons.location_city, size: 30, color: Colors.white),
      Icon(Icons.book_online, size: 30, color: Colors.white),
      Icon(Icons.person, size: 30, color: Colors.white),
    ],
    onTap: (index) {
      setState(() {
        currentIndex = index;
      });
      //Handle button tap
    },
  ) , 
    );
  }
}