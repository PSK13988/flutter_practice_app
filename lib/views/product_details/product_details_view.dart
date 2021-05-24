import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = 'product-detail';
  const ProductDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('${Get.arguments.toString()}'),
          Text('2'),
          Text('3'),
          FlatButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Click Me for Back!'))
        ],
      ),
    );
  }
}
