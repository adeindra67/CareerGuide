import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/home/views/job_listings.dart';
import 'package:shop/screens/home/views/career_info_screen.dart';
import 'package:shop/screens/home/views/list_university_screen.dart';
import 'karirzone_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOME",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: whiteColor),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/images/career_guide_banner.png", // Ganti dengan path banner Anda
                fit: BoxFit.cover,
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(defaultPadding),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                FeatureBox(
                  iconPath: 'assets/icons/karirzone.svg',
                  title: "KarirZone",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KarirZoneScreen()),
                    );
                  },
                ),
                FeatureBox(
                  iconPath: 'assets/icons/career_info.svg',
                  title: "Informasi Karir",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CareerInfoScreen()),
                    );
                  },
                ),
                FeatureBox(
                  iconPath: 'assets/icons/job_listings.svg',
                  title: "Job Listings",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JobListingsScreen()),
                    );
                  },
                ),
                FeatureBox(
                  iconPath: 'assets/icons/list_university.svg',
                  title: "List University",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListUniversityScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureBox extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const FeatureBox({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultBorderRadious),
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 50,
              height: 50,
              // Tanpa colorFilter untuk menjaga warna asli
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
