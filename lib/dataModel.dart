import 'package:cloud_firestore/cloud_firestore.dart';

class DataModel {
  final String id;
  final String name;
  final String grams;
  final double unit_price;
  final double rating;
  final String description;
  final String delivery;

  DataModel({
    required this.id,
    required this.name,
    required this.grams,
    required this.unit_price,
    required this.rating,
    required this.delivery,
    required this.description

  });

  factory DataModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return DataModel(
      id: doc.id,
      name: data['name'] ?? '',
      grams: data['grams'] ?? '',
      unit_price: (data['unit_price'] ?? 0).toDouble(),
      rating: (data['rating'] ?? 0).toDouble(),
      delivery: data['delivery'] ?? '',
      description: data['description'] ?? ''
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'grams': grams,
      'unit_price': unit_price,
      'rating' : rating,
      'delivery' : delivery,
      'description' : description
    };
  }
}