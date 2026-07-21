import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:venue_connect/views/login.dart';
import 'package:venue_connect/views/registration.dart';
import 'package:venue_connect/views/home.dart';

var routes = [
  GetPage(name: "/", page: () => LoginScreen()),
  GetPage(name: "/registration", page: () => RegistrationScreen()),
  GetPage(name: "/home", page: () => HomeScreen()),
] ;