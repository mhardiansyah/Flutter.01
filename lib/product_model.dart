import 'package:flutter/material.dart';

class ProductModel extends StatelessWidget {
  final String ImageProduct;
  final String NamaProduct;
  final String DescProduct;
  final String NumProduct;

  const ProductModel(
      {super.key,
      required this.ImageProduct,
      required this.NamaProduct,
      required this.DescProduct,
      required this.NumProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(ImageProduct),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      NamaProduct,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  DescProduct,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  NumProduct,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff0058AB))),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Tambah Ke Keranjang',
                        style: TextStyle(color: Color(0xff0058AB))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  
}



