import 'package:flutter/material.dart';
import 'package:mafi_mushkil/dashboard.dart'; // Replace with your actual import

class SuccessfullScreen extends StatefulWidget {
  const SuccessfullScreen({super.key});

  @override
  State<SuccessfullScreen> createState() => _SuccessfullScreenState();
}

class _SuccessfullScreenState extends State<SuccessfullScreen> {
  final TextEditingController _codeController =
  TextEditingController(text: '11223344');

  void _showSuccessBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
              child: Icon(Icons.check, color: Colors.white, size: 30),
            ),
            const SizedBox(height: 20),
            const Text(
              'Verification Successful',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close bottom sheet
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => DashboardScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Go to Home', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(height: 50),
            // SMS icon with green circle
            const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFCDDC39), // Lime green
              child: Icon(Icons.sms, color: Colors.black, size: 30),
            ),
            const SizedBox(height: 30),

            // Title
            const Text(
              'Enter the Code to Continue',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Subtext
            const Text(
              'A verification code has been sent\nto you via SMS.',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Code field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: _codeController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Verify button
            ElevatedButton(
              onPressed: _showSuccessBottomSheet,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child:
              const Text('Verify', style: TextStyle(color: Colors.white)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
