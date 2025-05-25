class ProductModel {
  final String name;
  final double price;

  // constructor with required values to create a product
  ProductModel({required this.name, required this.price});

  // factory constructor
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(name: json['name'], price: json['price']);
  }

  // method
  Map<String, dynamic> toJson() {
    return {'name': name, 'price': price};
  }
}
