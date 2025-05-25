class ProductModel {
  final String title;
  final double price;

  // constructor with required values to create a product
  ProductModel({required this.title, required this.price});

  // factory constructor
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'] ?? "Unknown",
      price: (json['price'] ?? 0).toDouble(),
    );
  }

  // method
  Map<String, dynamic> toJson() {
    return {'title': title, 'price': price};
  }
}
