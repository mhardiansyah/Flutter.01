import 'package:flutter/material.dart';
import 'package:ikea/Category_items.dart';

class DetailProduct extends StatefulWidget {
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget hearder() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Colors.grey))),
          padding: EdgeInsets.only(top: 70, right: 24, left: 24, bottom: 20),
          height: 112,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 26,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'ALEX/LAGKAPTEN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 26,
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                Icons.share,
                size: 26,
              ),
              SizedBox(
                width: 24,
              ),
              Icon(
                Icons.shopping_cart_outlined,
                size: 26,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget product() {
    return Padding(
      padding: EdgeInsets.only(right: 24, left: 24, top: 100),
      child: Column(children: [
        SizedBox(
          height: 24,
        ),
        Container(
          width: 382,
          height: 382,
          child: Image.asset('assets/perlengkapan.png'),
        ),
        Container(
          height: 74,
          child: GridView.count(
            crossAxisCount: 5,
            shrinkWrap: true,
            crossAxisSpacing: 15,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                child: Image.asset('assets/detail1.png'),
              ),
              Container(
                child: Image.asset('assets/detail2.png'),
              ),
              Container(
                child: Image.asset('assets/detail3.png'),
              ),
              Container(
                child: Image.asset('assets/detail4.png'),
              ),
              Container(
                child: Image.asset('assets/perlengkapan.png'),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          product(),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: hearder(),
          ),
        ],
      ),
    );
  }
}
