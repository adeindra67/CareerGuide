import 'package:flutter/material.dart';
import 'package:shop/screens/main_screen.dart';
import 'package:shop/screens/home/views/career_info_screen.dart';
import 'package:shop/screens/home/views/homescreen.dart';
import 'package:shop/screens/auth/views/login_screen.dart';
import 'package:shop/screens/auth/views/signup_screen.dart';
import 'package:shop/screens/home/views/job_listings.dart';
import 'package:shop/screens/home/views/karirzone_screen.dart';
import 'package:shop/screens/home/views/list_university_screen.dart';
import 'package:shop/screens/onbording/views/onbording_screnn.dart';
import 'package:shop/screens/minat_bakat/views/minat_bakat_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_kepribadian_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_penjurusan_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_kemampuan_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_gaya_belajar_screen.dart';
import 'package:shop/screens/pembelian/views/pembelian_screen.dart';
import 'package:shop/screens/pembelian/views/karir_premium_screen.dart';
import 'package:shop/screens/home/views/counter_screen.dart';
import 'package:shop/screens/pembelian/views/panduan_perkuliahan_screen.dart';
import 'package:shop/screens/pembelian/views/artikel_premium_screen.dart';
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
    case careerInfoScreenRoute:
      return MaterialPageRoute(builder: (context) => CareerInfoScreen());
    case listUniversityScreenRoute:
      return MaterialPageRoute(builder: (context) => ListUniversityScreen());
    case minatBakatScreenRoute:
      return MaterialPageRoute(builder: (context) => MinatBakatScreen());
    case tesKepribadianScreenRoute:
      return MaterialPageRoute(builder: (context) => TesKepribadianScreen());
    case tesPenjurusanScreenRoute:
      return MaterialPageRoute(builder: (context) => TesPenjurusanScreen());
    case tesKemampuanScreenRoute:
      return MaterialPageRoute(builder: (context) => TesKemampuanScreen());
    case tesGayaBelajarScreenRoute:
      return MaterialPageRoute(builder: (context) => TesGayaBelajarScreen());
    case 'pembelian':
      return MaterialPageRoute(builder: (context) => PembelianScreen());
    case 'karirPremium':
      return MaterialPageRoute(builder: (context) => KarirPremiumScreen());
    case panduanPerkuliahanScreenRoute:
      return MaterialPageRoute(
          builder: (context) => PanduanPerkuliahanScreen());
    case artikelPremiumScreenRoute:
      return MaterialPageRoute(builder: (context) => ArtikelPremiumScreen());
    case mainScreenRoute:
      return MaterialPageRoute(builder: (context) => MainScreen());
    case '/counter':
      return MaterialPageRoute(builder: (context) => CounterScreen());

    default:
      return MaterialPageRoute(builder: (context) => OnBordingScreen());
  }
}
