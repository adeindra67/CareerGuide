import 'package:flutter/material.dart';
import 'package:shop/constants.dart'; // Pastikan untuk mengimpor constants.dart

class KarirZoneScreen extends StatefulWidget {
  const KarirZoneScreen({Key? key}) : super(key: key);

  @override
  _KarirZoneScreenState createState() => _KarirZoneScreenState();
}

class _KarirZoneScreenState extends State<KarirZoneScreen> {
  bool isKuliah = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KarirZone",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari artikel disini !',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isKuliah = false;
                        });
                      },
                      child: const Text('KERJA'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: isKuliah ? Colors.black : Colors.white,
                        backgroundColor: isKuliah ? Colors.white : primaryColor,
                        side: BorderSide(color: primaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isKuliah = true;
                        });
                      },
                      child: const Text('KULIAH'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: isKuliah ? Colors.white : Colors.black,
                        backgroundColor: isKuliah ? primaryColor : Colors.white,
                        side: BorderSide(color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount:
                  isKuliah ? articlesKuliah.length : articlesKerja.length,
              itemBuilder: (context, index) {
                final article =
                    isKuliah ? articlesKuliah[index] : articlesKerja[index];
                return ArticleCard(article: article);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Image.asset(article.imagePath),
            ListTile(
              title: Text(article.title),
              subtitle:
                  Text('${article.date} • ${article.readTime} minutes read'),
            ),
          ],
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String date;
  final String readTime;
  final String imagePath;

  Article({
    required this.title,
    required this.date,
    required this.readTime,
    required this.imagePath,
  });
}

final List<Article> articlesKuliah = [
  Article(
    title: 'Jurusan Jurnalistik: Mata Kuliah, Kampus, Gelar dan Prospek Kerja',
    date: 'July 28, 2024',
    readTime: '6',
    imagePath: 'assets/images/journalist_day.png',
  ),
  Article(
    title: '100 Universitas Terbaik di Dunia Tahun 2024 Versi THE WUR',
    date: 'July 28, 2024',
    readTime: '6',
    imagePath: 'assets/images/university_ranking.png',
  ),
  Article(
    title: '8 Perbedaan Masa Sekolah dan Kuliah yang Perlu Diketahui',
    date: 'July 28, 2024',
    readTime: '6',
    imagePath: 'assets/images/school_vs_college.png',
  ),
  Article(
    title: 'Apa Bedanya Jenjang Pendidikan Diploma dan Sarjana?',
    date: 'July 28, 2024',
    readTime: '6',
    imagePath: 'assets/images/diploma_vs_bachelor.png',
  ),
  Article(
    title: 'Mengenal SKS, IP, IPK & Sistem Penilaian di Bangku Kuliah',
    date: 'July 28, 2024',
    readTime: '6',
    imagePath: 'assets/images/grading_system.png',
  ),
  Article(
    title: 'Data Statistik UTBK SBMPTN 2024',
    date: 'July 28, 2024',
    readTime: '6',
    imagePath: 'assets/images/utbk_stats.png',
  ),
];

final List<Article> articlesKerja = [
  Article(
    title: 'Cara Membuat CV yang Menarik untuk Perusahaan',
    date: 'August 1, 2024',
    readTime: '5',
    imagePath: 'assets/images/cv_tips.png',
  ),
  Article(
    title: 'Tips Sukses Wawancara Kerja',
    date: 'August 2, 2024',
    readTime: '4',
    imagePath: 'assets/images/interview_tips.png',
  ),
  Article(
    title: '10 Pekerjaan dengan Gaji Tertinggi di 2024',
    date: 'August 3, 2024',
    readTime: '6',
    imagePath: 'assets/images/top_jobs.png',
  ),
  Article(
    title: 'Bagaimana Menjadi Freelancer Sukses',
    date: 'August 4, 2024',
    readTime: '7',
    imagePath: 'assets/images/freelancer.png',
  ),
  Article(
    title: 'Tips Manajemen Waktu untuk Pekerja Kantoran',
    date: 'August 5, 2024',
    readTime: '5',
    imagePath: 'assets/images/time_management.png',
  ),
  Article(
    title: 'Peran Teknologi dalam Dunia Kerja',
    date: 'August 6, 2024',
    readTime: '6',
    imagePath: 'assets/images/technology_work.png',
  ),
];
