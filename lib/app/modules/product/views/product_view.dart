import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();
  ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      // indicates the usage of Getx controller
      // listens for changes and updates the ui
      body: Obx(() {
        if (productController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (productController.errorMessage.value.isNotEmpty) {
          return Center(child: Text(productController.errorMessage.value));
        }

        return ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            final product = productController.products[index];

            return ListTile(
              title: Text(product.title),
              subtitle: Text('\$${product.price.toString()}'),
              onTap: () => Get.toNamed('/product-details', arguments: product),
            );
          },
        );
      }),
    );
  }
}
