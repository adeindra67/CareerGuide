import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class KarirPremiumScreen extends StatelessWidget {
  const KarirPremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Karir Premium",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: whiteColor),
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
              child: Text(
                "Pilih paket yang mana?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            PackageCard(
              title: "Paket Konsultasi Karir Individu",
              price: "Rp200.000",
              originalPrice: "Rp250.000",
              features: [
                "Sesi konsultasi 1-on-1",
                "Rencana karir pribadi",
                "Akses eksklusif ke materi"
              ],
            ),
            PackageCard(
              title: "Paket Konsultasi Karir Grup",
              price: "Rp150.000",
              originalPrice: "Rp200.000",
              features: [
                "Sesi konsultasi grup",
                "Rencana karir kelompok",
                "Diskon untuk pelatihan lanjut"
              ],
            ),
            PackageCard(
              title: "Paket Artikel dan Sumber Daya Premium",
              price: "Rp100.000",
              originalPrice: "Rp150.000",
              features: [
                "Akses ke artikel premium",
                "Download materi karir",
                "Newsletter bulanan"
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final String title;
  final String price;
  final String originalPrice;
  final List<String> features;

  const PackageCard({
    Key? key,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Harga: $price",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                "Harga Asli: $originalPrice",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(height: 10),
              ...features
                  .map((feature) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          children: [
                            Icon(Icons.check, color: Colors.green),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                feature,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk memilih paket
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Pilih Paket",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
