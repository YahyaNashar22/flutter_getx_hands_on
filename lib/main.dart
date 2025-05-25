import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_hands_on/app/modules/product/controllers/cart_controller.dart';
import 'package:getx_hands_on/app/routes/app_pages.dart';

void main() {
  Get.put(CartController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Product App',
      initialRoute: Routes.product,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
