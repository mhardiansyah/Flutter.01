import 'package:flutter/material.dart';

class HalamanHome extends StatefulWidget {
  const HalamanHome({super.key});

  @override
  State<HalamanHome> createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset('assets/banner.png'),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            // ListView.builder(
            //     itemCount: 19,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Column(
            //           children: [Image.asset('assets/banner.png')],
            //         ),
            //       );
            //     }),
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
                )),
          ],
        ),
      ),
    );
    ;
  }
}
