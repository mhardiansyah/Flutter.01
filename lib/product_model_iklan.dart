import 'package:flutter/material.dart';

class ProductModelIklan extends StatelessWidget {
  final String ImageProduct;
  final String NamaProduct;
  final String DescProduct;

  const ProductModelIklan(
      {super.key,
      required this.ImageProduct,
      required this.NamaProduct,
      required this.DescProduct});

  @override
  Widget build(BuildContext context) {
    Color ContainerColor;
    if (ImageProduct == 'assets/koleksi 1.png') {
      ContainerColor = Color(0xff4F707F);
    } else if (ImageProduct == 'assets/koleksi 2.png') {
      ContainerColor = Color(0xff5E4238);
    } else {
      ContainerColor = Color(0xff4F707);
    }

    return Container(
      color: ContainerColor,
      margin: EdgeInsets.only(top: 16, right: 10),
      padding: EdgeInsets.only(right: 12, left: 13),
      width: 170,
      height: 232,
      child: Stack(
        children: [
          Column(
            children: [
              Text(
                NamaProduct,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                DescProduct,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              ImageProduct,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
