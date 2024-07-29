import 'package:flutter/material.dart';
import 'package:shop/constants.dart'; // Pastikan untuk mengimpor constants.dart
import 'package:shop/screens/home/views/component/job_data.dart'; // Pastikan path sesuai

class JobListingsScreen extends StatelessWidget {
  const JobListingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, List<Job>> jobsByJurusan = {};
    for (var job in jobListings) {
      if (!jobsByJurusan.containsKey(job.jurusan)) {
        jobsByJurusan[job.jurusan] = [];
      }
      jobsByJurusan[job.jurusan]!.add(job);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Job Listings",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: jobsByJurusan.keys.map((jurusan) {
            final jobs = jobsByJurusan[jurusan]!;
            return JobSection(
              jurusan: jurusan,
              jobs: jobs.take(5).toList(),
              allJobs: jobs,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class JobSection extends StatelessWidget {
  final String jurusan;
  final List<Job> jobs;
  final List<Job> allJobs;

  const JobSection({
    Key? key,
    required this.jurusan,
    required this.jobs,
    required this.allJobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                jurusan,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllJobsScreen(
                        jurusan: jurusan,
                        jobs: allJobs,
                      ),
                    ),
                  );
                },
                child: const Text("Lihat Semua"),
              ),
            ],
          ),
          Column(
            children: jobs.map((job) => JobCard(job: job)).toList(),
          ),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final Job job;

  const JobCard({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        child: ListTile(
          title: Text(job.title),
          subtitle: Text('${job.company} • ${job.location}'),
          trailing: Text(job.datePosted),
        ),
      ),
    );
  }
}

class AllJobsScreen extends StatelessWidget {
  final String jurusan;
  final List<Job> jobs;

  const AllJobsScreen({
    Key? key,
    required this.jurusan,
    required this.jobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Jobs - $jurusan",
          style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return JobCard(job: job);
        },
      ),
    );
  }
}
