import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mafi_mushkil/started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>StartedScreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC0FF00),
      body: Container(
           child:  Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                     Image.asset('assets/images/mafia.jpeg',
                      width: 80,
                      height: 80,
                    ),
                 const SizedBox(height: 15,),
                 Text('Mafi Mushkil',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                 color: Colors.black),),
                 const SizedBox(height: 150,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pixel.jpeg',
                     width: 20,
                     height: 20,
                   ),
                    const SizedBox(width: 5,),
                    Text('Pixel io\nTechnologies ',style: TextStyle(fontSize: 10),),
                  ],
                 ),

               ],
             ),
           ),


      ),
    );
  }
}
