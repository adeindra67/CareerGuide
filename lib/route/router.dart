import 'package:flutter/material.dart';
import 'package:shop/screens/home/views/homescreen.dart';
import 'package:shop/screens/auth/views/login_screen.dart';
import 'package:shop/screens/auth/views/signup_screen.dart';
import 'package:shop/screens/home/views/job_listings.dart';
import 'package:shop/screens/home/views/karirzone_screen.dart';
import 'package:shop/screens/onbording/views/onbording_screnn.dart'; // Tambahkan ini
import 'route_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case onbordingScreenRoute:
      return MaterialPageRoute(builder: (context) => OnBordingScreen());
    case logInScreenRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case signUpScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUpScreen());
    case homeScreenRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case karirZoneScreenRoute:
      return MaterialPageRoute(builder: (context) => KarirZoneScreen());
    case jobListingsScreenRoute:
      return MaterialPageRoute(builder: (context) => JobListingsScreen());
    default:
      return MaterialPageRoute(builder: (context) => OnBordingScreen());
  }
}
