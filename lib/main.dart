import 'package:flutter/material.dart';
import 'package:flutter_practice_app/controllers/product_controller.dart';
import 'package:flutter_practice_app/views/product_list_screen.dart';
import 'package:get/get.dart';

// Master branch issue fixed commit
// feature 1
// feature 2
// advance feature added
void main() {
  Get.put(ProductController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductListScreen(),
      navigatorKey: Get.key,
    );
  }
}
