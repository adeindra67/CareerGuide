import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class RuangDiskusiScreen extends StatelessWidget {
  const RuangDiskusiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ruang Diskusi dan Forum",
            style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
          ),
          backgroundColor: primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(110.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Cari Grup atau Username.",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                TabBar(
                  indicatorColor: whiteColor,
                  labelColor: whiteColor,
                  unselectedLabelColor:
                      const Color.fromARGB(255, 220, 218, 218),
                  tabs: [
                    Tab(text: "Grup"),
                    Tab(text: "Teman"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            GroupTab(),
            FriendTab(),
          ],
        ),
      ),
    );
  }
}

class GroupTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GroupCard(
            groupName: "PERKUMPULAN CALON MABA PTN 2024",
            groupInfo:
                "Publik - 10 rb anggota. 20+ diskusi per hari\nBismillah Kuliah Tahun ini",
          ),
          GroupCard(
            groupName: "PERINTIS BUKAN PEWARIS",
            groupInfo:
                "Publik - 8 rb anggota. 10+ diskusi per hari\nTeruslah Bekerja Keras Teman!",
          ),
          GroupCard(
            groupName: "GRUP BELAJAR MATEMATIKA",
            groupInfo:
                "Publik - 5 rb anggota. 15+ diskusi per hari\nMatematika untuk Semua",
          ),
          GroupCard(
            groupName: "AKADEMI CRYPTO",
            groupInfo:
                "Publik - 6 rb anggota. 12+ diskusi per hari\nMcLaren lu warna apa bos?",
          ),
          GroupCard(
            groupName: "KULIAH ITU PENTING",
            groupInfo:
                "Publik - 4 rb anggota. 8+ diskusi per hari\nAyo kuliah, supaya tidak idiet!",
          ),
        ],
      ),
    );
  }
}

class FriendTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Tidak ada teman."),
    );
  }
}

class GroupCard extends StatelessWidget {
  final String groupName;
  final String groupInfo;

  const GroupCard({
    Key? key,
    required this.groupName,
    required this.groupInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                groupName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                groupInfo,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Aksi untuk gabung grup
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Gabung",
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
