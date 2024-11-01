// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikea/Category_items.dart';
import 'package:ikea/product_model_iklan.dart';
import 'package:ikea/productmodel_home.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double scrennwidth = MediaQuery.of(context).size.width;

    Widget header() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        padding: EdgeInsets.only(right: 24, left: 24, top: 40, bottom: 20),
        child: Row(
          children: [
            Image.asset(
              'assets/Ikea.png',
              width: 84,
              height: 33,
            ),
            Spacer(),
            Icon(
              Icons.search,
              size: 26,
            ),
            SizedBox(width: 24),
            Icon(
              Icons.notifications_none_outlined,
              size: 26,
            ),
            SizedBox(width: 24),
            Icon(
              Icons.shopping_cart_outlined,
              size: 26,
            ),
          ],
        ),
      );
    }

    Widget product() {
      return Padding(
        padding: EdgeInsets.only(top: 100, right: 24, left: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.asset(
                'assets/banner.png',
                width: 382,
                height: 280,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CategoryItems(
                        ImageCategory: 'assets/kamar.png',
                        Label: 'Kamar Tidur'),
                    CategoryItems(
                        ImageCategory: 'assets/ruang_kerja.png',
                        Label: 'Ruang Kerja'),
                    CategoryItems(
                        ImageCategory: 'assets/dapur.png', Label: 'Dapur'),
                    CategoryItems(
                        ImageCategory: 'assets/bayi.png', Label: 'Bayi & anak'),
                    CategoryItems(
                        ImageCategory: 'assets/tekstil.png', Label: 'Tekstil'),
                    CategoryItems(
                        ImageCategory: 'assets/penyimpanan.png',
                        Label: 'Peyimpanan'),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Produk Populer',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.blue),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProductmodelHome(
                            ImageProduct: 'assets/kipas.png',
                            NamaProduct: 'KROKFJORDEN',
                            DescProduct: 'Pengait dengan plastik isap ...',
                            NumProduct: 'Rp99.900'),
                        ProductmodelHome(
                            ImageProduct: 'assets/meja.png',
                            NamaProduct: 'ALEX/LAGKAPTEN',
                            DescProduct: 'Meja, hijau muda/putih, 120x60 cm',
                            NumProduct: 'Rp1.909.000'),
                        ProductmodelHome(
                            ImageProduct: 'assets/lemari2.png',
                            NamaProduct: 'FARDAL/PAX',
                            DescProduct:
                                'Kombinasi lemari pakaian, putih/hig...',
                            NumProduct: 'Rp8.400.000'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Telusuri Koleksi Kami',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/koleksi3.png',
                        width: 173,
                        height: 232,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/koleksi4.png',
                        width: 173,
                        height: 232,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Penawaran Terkini',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 183,
                          child: Image.asset(
                            'assets/iklan1.png',
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: 183,
                          child: Image.asset('assets/iklan2.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          product(),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: header(),
          ),
        ],
      ),
    );
  }
}
