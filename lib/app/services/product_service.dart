import 'dart:convert';

import 'package:getx_hands_on/app/modules/product/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  final String apiUrl = 'https://fakestoreapi.com/products';

  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);

      return data.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
