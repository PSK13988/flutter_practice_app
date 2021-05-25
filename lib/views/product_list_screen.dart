import 'package:flutter/material.dart';
import 'package:flutter_practice_app/controllers/product_controller.dart';
import 'package:flutter_practice_app/models/product.dart';
import 'package:flutter_practice_app/views/product_details/product_details_view.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productController = Get.find<ProductController>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // GetX<ProductController>(builder: (productController) {
          //   return
          Obx(
            () => ListView.builder(
                shrinkWrap: true,
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 1.5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                                'id: ${productController.products[index].id} --> name: ${productController.products[index].name}'
                                ' --> Price1 : ${productController.products[index].price}'),
                          ),
                        ],
                      ));
                }),
          ),
          //}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Added extra AND condition
          var productController = Get.find<ProductController>();
          var id = productController.products.length + 1;
          var name = 'Product $id';
          var price = 100.0 + id;
          productController
              .addProduct(Product(id: id, name: name, price: price));
          print('Product added $name');
        },
      ),
    );
  }
}
