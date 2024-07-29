import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class PanduanPerkuliahanScreen extends StatelessWidget {
  const PanduanPerkuliahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Panduan Perkuliahan",
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
                "Pilih paket panduan perkuliahan yang mana?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
            PackageCard(
              title: "Panduan Perkuliahan A",
              price: "Rp150.000",
              originalPrice: "Rp200.000",
              features: [
                "E-book panduan lengkap",
                "Video tutorial perkuliahan",
                "Sesi tanya jawab dengan pakar"
              ],
            ),
            PackageCard(
              title: "Panduan Perkuliahan B",
              price: "Rp250.000",
              originalPrice: "Rp300.000",
              features: [
                "E-book dan video lengkap",
                "Sesi mentoring pribadi",
                "Akses ke grup diskusi"
              ],
            ),
            PackageCard(
              title: "Panduan Perkuliahan C",
              price: "Rp350.000",
              originalPrice: "Rp400.000",
              features: [
                "Semua fitur Panduan A dan B",
                "Materi eksklusif tambahan",
                "Sertifikat penyelesaian"
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
