// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

// class AddToCartRespository {
//   Future<List<ItemPreview>> addToCart() async {
//     String endpoint = 'https://fakestoreapi.com/products';

//     var dio = Dio();
//     final response = await dio.get(endpoint);
//     final result = List<Map<String, dynamic>>.from(response.data);

//     List<ItemPreview> addItems =
//         result.map((e) => ItemPreview.fromMap(e)).toList();

//     return addItems;
//   }
// }

// final addCartProvider = Provider<AddToCartRespository>((ref) {
//   return AddToCartRespository();
// });
