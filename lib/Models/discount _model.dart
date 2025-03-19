class Product {
  final String discount;

  Product({required this.discount});

  // Factory method to create an object from a JSON map
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(discount: json['discount'].toDouble());
  }
}
final List<Product> products = [
  Product(discount: "Up To 10%"),
  Product(discount: "Up To 5%"),
  Product(discount: "Up To 25%"),
  Product(discount: "Up To 70%"),
  Product(discount: "Up To 40%"),
];