import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/models/product_model.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;

  // begin with these products inside the products array of the controller
  @override
  void onInit() {
    products.addAll([
      ProductModel(name: 'Product 1', price: 29.99),
      ProductModel(name: 'Product 2', price: 39.99),
      ProductModel(name: 'Product 3', price: 49.99),
      ProductModel(name: 'Product 4', price: 59.99),
    ]);
    super.onInit();
  }
}
