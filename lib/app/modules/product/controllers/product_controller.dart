import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/models/product_model.dart';
import 'package:getx_hands_on/app/services/product_service.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var errorMessage = ''.obs;
  var isLoading = false.obs;

  final ProductService productService;

  ProductController({required this.productService});

  // begin with these products inside the products array of the controller
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      errorMessage('');
      var products = await productService.fetchProducts();
      products.assignAll(products);
    } catch (error) {
      errorMessage('Failed to fetch products');
    } finally {
      isLoading(false);
    }
  }
}
