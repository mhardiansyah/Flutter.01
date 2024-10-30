// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikea/Halaman.dart';
import 'product_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<ProductModel> productList = [
    ProductModel(
      ImageProduct: 'assets/ALEX.png',
      NamaProduct: 'ALEX',
      DescProduct: 'Unit laci, abu-abu toska, ',
      NumProduct: 'Rp1.350.000',
    ),
    ProductModel(
      ImageProduct: 'assets/kursi.png',
      NamaProduct: 'MILLBERGET',
      DescProduct: 'Kursi putar, murum hitam',
      NumProduct: 'Rp1.799.000',
    ),
    ProductModel(
      ImageProduct: 'assets/kasur.png',
      NamaProduct: 'SONGESAND',
      DescProduct: 'Rngk tmpt tdr dg 2 ktk penyimpanan, ',
      NumProduct: 'Rp3.499.000',
    ),
    ProductModel(
      ImageProduct: 'assets/kursi.png',
      NamaProduct: 'MILLBERGET',
      DescProduct: 'Kursi putar, murum hitam',
      NumProduct: 'Rp1.799.000',
    ),
    ProductModel(
      ImageProduct: 'assets/Lampu_tidur.png',
      NamaProduct: 'HEKTAR',
      DescProduct: 'Lampu lantai, abu-abu tua, ',
      NumProduct: 'Rp1.299.000',
    ),
  ];

  List<ProductModel> displayproduct = [];

  @override
  void initState() {
    super.initState();
    displayproduct = productList;
  }

  void upadateList(String value) {
    setState(() {
      displayproduct = productList
          .where((product) =>
              product.NamaProduct.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Wishlist',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.shopping_cart_outlined,
                size: 26,
              )
            ],
          ),
          SizedBox(
            height: 26,
          ),
          TextField(
            onChanged: (value) => upadateList(value),
            decoration: InputDecoration(
                hintText: 'Cari barang di wishlist',
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xff0058AB),
                ))),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${displayproduct.length} barang'),
              Icon(
                Icons.list,
                size: 20,
              )
            ],
          )
        ],
      );
    }

    Widget product() {
      return Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: displayproduct.map((product) {
              return Column(
                children: [
                  product,
                  SizedBox(
                    height: 24,
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 32, right: 24, left: 24),
        child: Column(
          children: [
            header(),
            SizedBox(
              height: 24,
            ),
            product(),
          ],
        ),
      ),
    );
  }
}
