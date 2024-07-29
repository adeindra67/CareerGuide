import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class ArtikelPremiumScreen extends StatelessWidget {
  const ArtikelPremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Artikel Premium",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: true, // Mengaktifkan tombol kembali
        iconTheme: IconThemeData(
            color: whiteColor), // Mengubah warna ikon menjadi putih
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Pilih paket artikel premium yang mana?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            PackageCard(
              title: "Artikel Premium A",
              price: "Rp100.000",
              originalPrice: "Rp150.000",
              features: [
                "Akses ke 50 artikel premium",
                "Artikel mingguan terbaru",
                "Akses ke forum diskusi"
              ],
            ),
            PackageCard(
              title: "Artikel Premium B",
              price: "Rp200.000",
              originalPrice: "Rp250.000",
              features: [
                "Akses ke 100 artikel premium",
                "Artikel mingguan terbaru",
                "Sesi tanya jawab bulanan"
              ],
            ),
            PackageCard(
              title: "Artikel Premium C",
              price: "Rp300.000",
              originalPrice: "Rp350.000",
              features: [
                "Semua fitur Artikel A dan B",
                "Akses ke artikel eksklusif",
                "Materi tambahan"
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
