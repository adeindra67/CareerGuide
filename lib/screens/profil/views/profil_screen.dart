import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/onbording/views/onbording_screnn.dart';

import '../../../route/screen_export.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profil",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/profile_placeholder.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Nama Pengguna",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "email@pengguna.com",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Riwayat Pembelanjaan"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RiwayatPembelanjaanScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Edit Profil"),
              onTap: () {
                // Tambahkan navigasi ke layar Edit Profil
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Pengaturan"),
              onTap: () {
                // Tambahkan navigasi ke layar Pengaturan
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Bantuan"),
              onTap: () {
                // Tambahkan navigasi ke layar Bantuan
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Keluar"),
              onTap: () {
                Navigator.pushNamed(context, onbordingScreenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RiwayatPembelanjaanScreen extends StatelessWidget {
  const RiwayatPembelanjaanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Riwayat Pembelanjaan",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: whiteColor),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah riwayat pembelanjaan sebenarnya
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.receipt),
            title: Text("Pembelian #$index"),
            subtitle: Text("Detail pembelian $index"),
            onTap: () {
              // Tambahkan aksi untuk melihat detail pembelian
            },
          );
        },
      ),
    );
  }
}
