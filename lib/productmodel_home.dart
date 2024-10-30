import 'package:flutter/material.dart';
import 'package:ikea/detail_product.dart';

class ProductmodelHome extends StatelessWidget {
  final String ImageProduct;
  final String NamaProduct;
  final String DescProduct;
  final String NumProduct;

  const ProductmodelHome(
      {super.key,
      required this.ImageProduct,
      required this.NamaProduct,
      required this.DescProduct,
      required this.NumProduct});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailProduct(),
            ));
      },
      child: Container(
        width: 146,
        height: 254,
        margin: EdgeInsets.only(
          top: 16,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImageProduct),
            SizedBox(
              height: 12,
            ),
            Text(NamaProduct),
            SizedBox(
              height: 6,
            ),
            Text(DescProduct),
            SizedBox(
              height: 10,
            ),
            Text(NumProduct),
          ],
        ),
      ),
    );
  }
}
