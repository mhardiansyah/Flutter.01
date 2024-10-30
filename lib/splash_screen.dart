import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:ikea/halaman.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(
    //   const Duration(seconds: 5),
    //   () {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => page(),
    //         ));
    //   },
    // );

    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Ikea.png',
              width: 156,
              height: 61,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Creating a better everyday life\nfor the many people.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
