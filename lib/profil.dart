// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu Akun',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.settings,
                size: 26,
              ),
            ],
          ),
          
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 74, right: 24, left: 24),
          child: Column(
            children: [
              header(),
            ],
          ),
        ),
      ),
    );
  }
}
