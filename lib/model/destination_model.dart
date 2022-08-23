import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String category;
  final String imageUrl;
  final String about;
  final int price;
  final double rating;

  DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.category = '',
    this.imageUrl = '',
    this.about = '',
    this.price = 0,
    this.rating = 0.0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        category: json['category'],
        imageUrl: json['imageUrl'],
        about: json['about'],
        price: json['price'],
        rating: json['rating'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'category': category,
        'imageUrl': imageUrl,
        'about': about,
        'price': price,
        'rating': rating,
      };

  @override
  List<Object?> get props => [id, name, city, imageUrl, price, rating];
}
