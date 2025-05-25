import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/views/product_details_view.dart';
import 'package:getx_hands_on/app/modules/product/views/product_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.product, page: () => ProductView()),
    GetPage(name: Routes.productDetails, page: () => ProductDetailsView()),
  ];
}
