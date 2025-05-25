import 'package:get/get.dart';
import 'package:getx_hands_on/app/bindings/cart_binding.dart';
import 'package:getx_hands_on/app/bindings/product_binding.dart';
import 'package:getx_hands_on/app/modules/product/views/cart_view.dart';
import 'package:getx_hands_on/app/modules/product/views/checkout_view.dart';
import 'package:getx_hands_on/app/modules/product/views/product_details_view.dart';
import 'package:getx_hands_on/app/modules/product/views/product_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.product,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: Routes.productDetails,
      page: () => ProductDetailsView(),
      binding: CartBinding(),
    ),
    GetPage(name: Routes.cart, page: () => CartView()),
    GetPage(name: Routes.checkout, page: () => CheckoutView()),
  ];
}
