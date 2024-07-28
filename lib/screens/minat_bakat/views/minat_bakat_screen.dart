import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/minat_bakat/views/tes_kepribadian_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_penjurusan_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_kemampuan_screen.dart';
import 'package:shop/screens/minat_bakat/views/tes_gaya_belajar_screen.dart';

class MinatBakatScreen extends StatelessWidget {
  const MinatBakatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TES MINAT & BAKAT",
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
                "assets/images/minat_bakat_banner.png", // Ganti dengan path banner Anda
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Sobat Karir sudah tahu minat bakatmu belum? Cari tahu lebih dalam bersama Career Guide",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(defaultPadding),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                FeatureBox(
                  icon: Icons.person,
                  title: "Tes Kepribadian",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TesKepribadianScreen()),
                    );
                  },
                ),
                FeatureBox(
                  icon: Icons.school,
                  title: "Tes Penjurusan",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TesPenjurusanScreen()),
                    );
                  },
                ),
                FeatureBox(
                  icon: Icons.assessment,
                  title: "Tes Kemampuan",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TesKemampuanScreen()),
                    );
                  },
                ),
                FeatureBox(
                  icon: Icons.book,
                  title: "Tes Gaya Belajar",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TesGayaBelajarScreen()),
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
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const FeatureBox({
    Key? key,
    required this.icon,
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
            Icon(icon, size: 50, color: primaryColor),
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
