import 'package:flutter/material.dart';
import 'package:mafi_mushkil/onboarding.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Best Helping\nHands for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'With Our On-Demand Services App,\n  We Give Better Services To You.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Image.asset(
              'assets/images/plumber.jpeg',
              height: 350,
              width: double.infinity,
            ),
            const SizedBox(height: 40),

            // 👇 GestureDetector wraps the Container to make it clickable
            GestureDetector(
              onTap: () {
                // Navigate to the next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen()),
                );
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Gets Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFC0FF00),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
