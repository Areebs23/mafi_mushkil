import 'package:flutter/material.dart';
import 'package:mafi_mushkil/dashboard.dart';
import 'package:mafi_mushkil/security%20verification/verify.dart';
import 'package:mafi_mushkil/started.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  OnboardingPage(
                    title: 'Choose a service',
                    description:
                    'Find the right service for your needs\neasily, with a variety of options\navailable at your fingertips.',
                    image: 'assets/images/page1.jpeg',
                    currentPage: _currentPage,
                    pageIndex: 0,
                  ),
                  OnboardingPage(
                    title: 'Get a quote',
                    description:
                    'Request price estimates from\nprofessionals to help you make informed\ndecisions with ease.',
                    image: 'assets/images/page2.jpeg',
                    currentPage: _currentPage,
                    pageIndex: 1,
                  ),
                  OnboardingPage(
                    title: 'Work done',
                    description:
                    'Sit back and relax while skilled experts\nefficiently take care of your tasks,\nensuring a job well done.',
                    image: 'assets/images/page3.jpeg',
                    currentPage: _currentPage,
                    pageIndex: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StartedScreen()),
                      );
                    },
                    child: const Text('Skip'),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_currentPage < 2) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyScreen()),
                        );
                      }
                    },
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        _currentPage < 2 ? 'Next' : 'Finish',
                        style: const TextStyle(color: Color(0xFFC0FF00)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int currentPage;
  final int pageIndex;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.currentPage,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 30),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.all(4),
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: currentPage == index ? Colors.black : Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }),
        ),
      ],
    );
  }
}
