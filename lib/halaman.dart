import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ikea/Home.dart';
import 'package:ikea/Wishlist.dart';
import 'package:ikea/halaman_home.dart';
import 'package:ikea/homepage.dart';
import 'package:ikea/inspirasi.dart';
import 'package:ikea/profil.dart';
import 'product_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pagetState();
}

class _pagetState extends State<page> {
  int _currentIndex = 0;
  final List<Widget> _page = [
    Center(
      child: Home(),
    ),
    Center(
      child: Inspirasi(),
    ),
    Center(
      child: Wishlist(),
    ),
    Center(
      child: Profil(),
    ),
  ];
  void _onTapTapp(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff0058AB),
        unselectedItemColor: Color(0xff6C6C6C),
        currentIndex: _currentIndex,
        onTap: _onTapTapp,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.coffee), label: 'Inspirasi'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
