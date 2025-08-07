import 'package:flutter/material.dart';
import 'package:mafi_mushkil/security%20verification/start.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8A8484), // Greyish background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Circular Icon with face
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFC0FF00), // Neon yellow-green
                  ),
                  child: Icon(
                    Icons.sentiment_very_dissatisfied, // Not exact, but similar
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),

                // Title
                Text(
                  'Security Verification',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                // Subtext
                Text(
                  'This is your first login from this device.\nTo ensure the security of your account,\nplease verify your identity.',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 30),

                // Button
                ElevatedButton(
                  onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)
                      =>StartScreen()));

                    // Your verification logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Start to verify',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
