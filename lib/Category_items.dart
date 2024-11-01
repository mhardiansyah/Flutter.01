import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItems extends StatelessWidget {
  final String ImageCategory;
  final String Label;

  const CategoryItems(
      {super.key, required this.ImageCategory, required this.Label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            ImageCategory,
            width: 117,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            Label,
            style: TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
