import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/models/product_model.dart';

class CartController extends GetxController {
  final cartItems = <ProductModel>[].obs;
  final totalAmount = 0.0.obs;

  void addToCart(ProductModel product) {
    cartItems.add(product);
    calculateTotal();
  }

  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    calculateTotal();
  }

  void calculateTotal() {
    totalAmount.value = cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
