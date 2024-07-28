class Job {
  final String title;
  final String company;
  final String location;
  final String datePosted;
  final String jurusan;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.datePosted,
    required this.jurusan,
  });
}

final List<Job> jobListings = [
  // Pekerjaan untuk lulusan SMK Komputer
  Job(
    title: 'Junior Web Developer',
    company: 'Tech Corp',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 1, 2024',
    jurusan: 'Komputer',
  ),
  Job(
    title: 'IT Support Technician',
    company: 'Innova Ltd.',
    location: 'Bandung, Indonesia',
    datePosted: 'August 2, 2024',
    jurusan: 'Komputer',
  ),
  Job(
    title: 'Data Entry Clerk',
    company: 'DataWorks',
    location: 'Surabaya, Indonesia',
    datePosted: 'August 3, 2024',
    jurusan: 'Komputer',
  ),
  Job(
    title: 'Junior Software Tester',
    company: 'SoftTest Ltd.',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 4, 2024',
    jurusan: 'Komputer',
  ),
  Job(
    title: 'Network Technician',
    company: 'Net Solutions',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 5, 2024',
    jurusan: 'Komputer',
  ),
  Job(
    title: 'Junior Mechanic',
    company: 'AutoFix',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 4, 2024',
    jurusan: 'Otomotif',
  ),
  Job(
    title: 'Vehicle Inspection Assistant',
    company: 'CarCheck',
    location: 'Bandung, Indonesia',
    datePosted: 'August 5, 2024',
    jurusan: 'Otomotif',
  ),
  Job(
    title: 'Spare Parts Inventory Assistant',
    company: 'AutoParts Ltd.',
    location: 'Surabaya, Indonesia',
    datePosted: 'August 6, 2024',
    jurusan: 'Otomotif',
  ),
  Job(
    title: 'Junior Auto Electrician',
    company: 'ElectroAuto',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 7, 2024',
    jurusan: 'Otomotif',
  ),
  Job(
    title: 'Car Wash Technician',
    company: 'CleanCars',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 8, 2024',
    jurusan: 'Otomotif',
  ),
  Job(
    title: 'Junior Accountant',
    company: 'Finance Solutions',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 7, 2024',
    jurusan: 'Akuntansi',
  ),
  Job(
    title: 'Billing Clerk',
    company: 'Innova Ltd.',
    location: 'Bandung, Indonesia',
    datePosted: 'August 8, 2024',
    jurusan: 'Akuntansi',
  ),
  Job(
    title: 'Payroll Assistant',
    company: 'Payroll Services',
    location: 'Surabaya, Indonesia',
    datePosted: 'August 9, 2024',
    jurusan: 'Akuntansi',
  ),
  Job(
    title: 'Junior Auditor',
    company: 'Audit Solutions',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 10, 2024',
    jurusan: 'Akuntansi',
  ),
  Job(
    title: 'Tax Assistant',
    company: 'Tax Experts',
    location: 'Jakarta, Indonesia',
    datePosted: 'August 11, 2024',
    jurusan: 'Akuntansi',
  ),
];
