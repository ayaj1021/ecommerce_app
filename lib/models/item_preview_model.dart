// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemPreview {
  final String image;
  final String title;
  final String category;
  final num price;
  ItemPreview({
    required this.image,
    required this.title,
    required this.category,
    required this.price,
  });

  
  

  ItemPreview copyWith({
    String? image,
    String? title,
    String? category,
    num? price,
  }) {
    return ItemPreview(
      image: image ?? this.image,
      title: title ?? this.title,
      category: category ?? this.category,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'category': category,
      'price': price,
    };
  }

  factory ItemPreview.fromMap(Map<String, dynamic> map) {
    return ItemPreview(
      image: map['image'] as String,
      title: map['title'] as String,
      category: map['category'] as String,
      price: map['price'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemPreview.fromJson(String source) => ItemPreview.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemPreview(image: $image, title: $title, category: $category, price: $price)';
  }

  @override
  bool operator ==(covariant ItemPreview other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.title == title &&
      other.category == category &&
      other.price == price;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      title.hashCode ^
      category.hashCode ^
      price.hashCode;
  }
}



// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

// import 'dart:convert';

// List<Products> productsFromJson(String str) =>
//     List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

// String productsToJson(List<Products> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Products {
//   int id;
//   String title;
//   num price;
//   String description;
//   Category category;
//   String image;
//   Rating rating;

//   Products({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     required this.rating,
//   });

//   factory Products.fromJson(Map<String, dynamic> json) => Products(
//         id: json["id"],
//         title: json["title"],
//         price: json["price"]?.tonum(),
//         description: json["description"],
//         category: categoryValues.map[json["category"]]!,
//         image: json["image"],
//         rating: Rating.fromJson(json["rating"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         "category": categoryValues.reverse[category],
//         "image": image,
//         "rating": rating.toJson(),
//       };
// }

// enum Category { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }

// final categoryValues = EnumValues({
//   "electronics": Category.ELECTRONICS,
//   "jewelery": Category.JEWELERY,
//   "men's clothing": Category.MEN_S_CLOTHING,
//   "women's clothing": Category.WOMEN_S_CLOTHING
// });

// class Rating {
//   num rate;
//   int count;

//   Rating({
//     required this.rate,
//     required this.count,
//   });

//   factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//         rate: json["rate"]?.tonum(),
//         count: json["count"],
//       );

//   Map<String, dynamic> toJson() => {
//         "rate": rate,
//         "count": count,
//       };
// }

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
   
//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }