class OrderModel {
  final String id;
  final bool isActive;
  final double price;
  final String company;
  final String buyer;
  final List<String> tags;
  final String status;
  final DateTime registered;

  OrderModel({
    required this.id,
    required this.isActive,
    required this.price,
    required this.company,
    required this.buyer,
    required this.tags,
    required this.status,
    required this.registered,
  });

  // Factory constructor for creating an instance from JSON
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'] as String,
      isActive: json['isActive'] as bool,
      price: double.tryParse(
        json['price'].toString().replaceAll('\$', '').replaceAll(',', ''),
      ) ??
          0.0,
      company: json['company'] as String,
      buyer: json['buyer'] as String,
      tags: List<String>.from(json['tags'] as List),
      status: json['status'] as String,
      registered: DateTime.parse(json['registered'] as String),
    );
  }

  // Method for converting an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isActive': isActive,
      'price': price.toStringAsFixed(2),
      'company': company,
      'buyer': buyer,
      'tags': tags,
      'status': status,
      'registered': registered.toIso8601String(),
    };
  }
}
