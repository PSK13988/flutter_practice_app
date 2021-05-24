import 'package:flutter_practice_app/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    List<Product> items = [
      Product.fromJson({"id": 1, "name": "Product 1", "price": 35.0}),
      Product.fromJson({"id": 2, "name": "Product 2", "price": 45.0}),
      Product.fromJson({"id": 3, "name": "Product 3", "price": 55.0}),
      Product.fromJson({"id": 4, "name": "Product 4", "price": 65.0}),
    ];
    products.assignAll(items);
  }

  void addProduct(Product product) {
    products.add(product);
  }
}
