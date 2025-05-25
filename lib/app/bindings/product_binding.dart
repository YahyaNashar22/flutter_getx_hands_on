import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/controllers/product_controller.dart';
import 'package:getx_hands_on/app/services/product_service.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductService>(() => ProductService());
    Get.lazyPut<ProductController>(
      () => ProductController(productService: Get.find<ProductService>()),
    );
  }
}
