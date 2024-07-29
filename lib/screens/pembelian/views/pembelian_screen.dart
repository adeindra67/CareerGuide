import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/pembelian/views/karir_premium_screen.dart';
import 'package:shop/screens/pembelian/views/panduan_perkuliahan_screen.dart';
import 'package:shop/screens/pembelian/views/artikel_premium_screen.dart';

class PembelianScreen extends StatelessWidget {
  const PembelianScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PEMBELIAN",
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
                "assets/images/pembelian_banner.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Dapatkan berbagai penawaran premium untuk meningkatkan karir Anda bersama Career Guide",
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
              physics: const NeverScrollableScrollPhysics(),
              children: [
                FeatureBox(
                  title: "Konsultasi Karir Premium",
                  description:
                      "Sesi pribadi dengan ahli karir untuk menentukan jalur karir optimal dan memaksimalkan potensi Anda",
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KarirPremiumScreen()),
                    );
                  },
                ),
                FeatureBox(
                  title: "Panduan Lengkap Perkuliahan",
                  description:
                      "E-book dan video eksklusif yang mengulas mendalam tentang jurusan, universitas, dan tips sukses akademis.",
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PanduanPerkuliahanScreen()),
                    );
                  },
                ),
                FeatureBox(
                  title: "Akses Artikel Premium",
                  description:
                      "Akses ke artikel eksklusif dengan tips karir, wawasan industri, dan cerita inspiratif dari profesional sukses.",
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ArtikelPremiumScreen()),
                    );
                  },
                ),
                FeatureBox(
                  title: "Tes Minat dan Bakat Lanjutan",
                  description:
                      "Tes mendalam untuk menganalisis kekuatan dan kelemahan Anda, memberikan wawasan karir yang lebih detail.",
                  color: Colors.pink,
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MinatBakatScreen()));
                  },
                ),
                FeatureBox(
                  title: "Pelatihan Keterampilan Online",
                  description:
                      "Kursus online oleh para ahli di bidang manajemen waktu, keterampilan komunikasi, dan pengembangan profesional.",
                  color: Colors.grey,
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PelatihanScreen()));
                  },
                ),
                FeatureBox(
                  title: "Rekomendasi Karir Personal",
                  description:
                      "Rekomendasi karir yang dipersonalisasi berdasarkan analisis data minat, bakat, dan tujuan karir Anda.",
                  color: Colors.purple,
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => RekomendasiKarirScreen()));
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
  final String title;
  final String description;
  final Color color;
  final VoidCallback onTap;

  const FeatureBox({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
