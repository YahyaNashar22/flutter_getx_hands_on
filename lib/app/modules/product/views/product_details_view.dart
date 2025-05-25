import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/controllers/cart_controller.dart';
import 'package:getx_hands_on/app/modules/product/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // take the arguments passed by Get.toNamed()
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed('/cart'),
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text('\$${product.price}', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(product);
                Get.snackbar(
                  'Added to Cart',
                  '${product.name} added to your cart',
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              },
              child: Text('Add to Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.shopping_cart),
                          title: Text('View Cart'),
                          onTap: () {
                            Get.toNamed('/cart');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.payment),
                          title: Text('Proceed to Checkout'),
                          onTap: () {
                            Get.toNamed('/checkout');
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text('More Actions'),
            ),
          ],
        ),
      ),
    );
  }
}
