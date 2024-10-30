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
                SizedBox(
                  width: 24,
                ),
                Icon(
                  Icons.notifications_none_outlined,
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
        padding: EdgeInsets.only(top: 100, right: 24, left: 24),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
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
                            ImageCategory: 'assets/bayi.png',
                            Label: 'Bayi & anak'),
                        CategoryItems(
                            ImageCategory: 'assets/tekstil.png',
                            Label: 'Tekstil'),
                        CategoryItems(
                            ImageCategory: 'assets/penyimpanan.png',
                            Label: 'Peyimpanan'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
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
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
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
                                DescProduct:
                                    'Meja, hijau muda/putih, 120x60 cm',
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
                    height: 40,
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
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
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

                          // ProductModelIklan(
                          //     ImageProduct: 'assets/koleksi 1.png',
                          //     NamaProduct: 'BLÅVINGAD',
                          //     DescProduct:
                          //         'Koleksi yang terinspirasi dari lautan untuk menciptakan ...'),
                          // ProductModelIklan(
                          //     ImageProduct: 'assets/koleksi 2.png',
                          //     NamaProduct: 'BLÅVINGAD',
                          //     DescProduct:
                          //         'Koleksi yang terinspirasi dari lautan untuk menciptakan ...')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Column(
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
                                fontWeight: FontWeight.w600,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/iklan1.png',
                            width: 173,
                            height: 232,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/iklan2.png',
                            width: 173,
                            height: 232,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            }),
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
            child: hearder(),
          ),
        ],
      ),
    );
  }
}
