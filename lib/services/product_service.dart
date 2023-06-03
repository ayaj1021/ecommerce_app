import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

class FurnitureRepository{
  Future<List<ItemPreview>> getItemData() async {
  String endpoint = 'https://fakestoreapi.com/products';

  var dio = Dio();
  final response = await dio.get(endpoint);

  final result = List<Map<String, dynamic>>.from(response.data);

  List<ItemPreview> items = result.map((e) => ItemPreview.fromMap(e)).toList();

  return items;

  
}
}



final getProductsProvider = Provider<FurnitureRepository>((ref) {
  return FurnitureRepository();
});
