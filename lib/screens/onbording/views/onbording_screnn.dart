import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/components/dot_indicators.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/route_constants.dart';
import 'components/onbording_content.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  final List<Onbord> _onbordData = [
    Onbord(
      image: "assets/Illustration/Illustration-0.png",
      title: "Welcome to Career Guide",
      description:
          "Selamat datang di Career Guide, aplikasi yang membantu Anda menemukan jalur karir yang tepat setelah lulus sekolah.",
    ),
    Onbord(
      image: "assets/Illustration/Illustration-1.png",
      title: "Explore Career Paths",
      description:
          "Temukan berbagai jalur karir yang menarik, mulai dari perkuliahan hingga pekerjaan langsung, dan dapatkan informasi lengkap tentang setiap pilihan.",
    ),
    Onbord(
      image: "assets/Illustration/Illustration-2.png",
      title: "Career Guidance and Information",
      description:
          "Dapatkan saran dan informasi mengenai berbagai pilihan karir melalui artikel, berita, dan video yang informatif dan mudah diakses.",
    ),
    Onbord(
      image: "assets/Illustration/Illustration-3.png",
      title: "Take Interest and Aptitude Tests",
      description:
          "Ikuti tes minat dan bakat untuk mengenal diri Anda lebih baik dan mendapatkan rekomendasi karir yang sesuai dengan minat dan kemampuan Anda.",
    ),
    Onbord(
      image: "assets/Illustration/Illustration-4.png",
      title: "Join Discussion Forums",
      description:
          "Bergabunglah dengan forum diskusi untuk berdiskusi, bertukar ide, dan mendapatkan dukungan dari sesama siswa yang juga sedang menjelajahi pilihan karir.",
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, logInScreenRoute);
                  },
                  child: Text(
                    "Lewati",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _onbordData.length,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemBuilder: (context, index) => OnbordingContent(
                    title: _onbordData[index].title,
                    description: _onbordData[index].description,
                    image: _onbordData[index].image,
                    isTextOnTop: index.isOdd,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    _onbordData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding / 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_pageIndex > 0)
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          _pageController.previousPage(
                              duration: defaultDuration, curve: Curves.ease);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                  if (_pageIndex == 0)
                    const SizedBox(width: 60), // Placeholder to keep spacing
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageIndex < _onbordData.length - 1) {
                          _pageController.nextPage(
                              curve: Curves.ease, duration: defaultDuration);
                        } else {
                          Navigator.pushNamed(context, logInScreenRoute);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Arrow - Right.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

class Onbord {
  final String image, title, description;
  final String? imageDarkTheme;

  Onbord({
    required this.image,
    required this.title,
    this.description = "",
    this.imageDarkTheme,
  });
}
