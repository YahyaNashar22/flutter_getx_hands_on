import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_hands_on/app/routes/app_pages.dart';
import 'package:getx_hands_on/app/services/cart_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(CartService());
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
