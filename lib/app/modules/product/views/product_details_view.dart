import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // take the arguments passed by Get.toNamed()
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: const TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('\$${product.price}', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
