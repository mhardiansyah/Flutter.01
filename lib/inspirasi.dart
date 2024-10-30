// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inspirasi extends StatefulWidget {
  const Inspirasi({super.key});

  @override
  State<Inspirasi> createState() => _InspirasiState();
}

class _InspirasiState extends State<Inspirasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 74, right: 24, left: 24),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Temukan Inspirasi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 26,
                ),
                SizedBox(
                  width: 26,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 26,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
