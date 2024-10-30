import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikea/Home.dart';
import 'package:ikea/Wishlist.dart';
import 'package:ikea/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
