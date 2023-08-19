// models/trek_model.dart

class TrekModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final String itinerary;
  final List<String> inclusions;
  final List<String> exclusions;

  TrekModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.itinerary,
    required this.inclusions,
    required this.exclusions,
  });

  factory TrekModel.fromJson(Map<String, dynamic> json) {
    return TrekModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      images: List<String>.from(json['images']),
      itinerary: json['itinerary'],
      inclusions: List<String>.from(json['inclusions']),
      exclusions: List<String>.from(json['exclusions']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'price': price,
        'images': images,
        'itinerary': itinerary,
        'inclusions': inclusions,
        'exclusions': exclusions,
      };
}
