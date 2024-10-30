import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikea/Category_items.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
                itemCount: 19,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('item $index'),
                  );
                }),
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 60,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'ini header',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
