import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/controllers/cart_controller.dart';
import 'package:getx_hands_on/app/routes/app_pages.dart';

class CartView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();
  CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              {
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartController.cartItems[index];

                    return ListTile(
                      title: Text(item.title),
                      subtitle: Text('\$${item.price.toString()}'),
                      trailing: IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'Remove Items',
                            middleText:
                                'Are you sure you want to remove ${item.title} from the cart?',
                            textConfirm: 'Yes',
                            confirmTextColor: Colors.white,
                            onConfirm: () {
                              cartController.removeFromCart(item);
                              Get.back();
                            },
                            onCancel: () {},
                          );
                        },
                      ),
                    );
                  },
                );
              }
            }),
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total: \$${cartController.totalAmount.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.checkout),
            child: Text('Proceed to Checkout'),
          ),
        ],
      ),
    );
  }
}
