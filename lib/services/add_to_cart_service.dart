import 'package:dio/dio.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

Future<ItemPreview> addToCart() async {
  String endpoint = 'https://fakestoreapi.com/products';

  var dio = Dio();
  final response = await dio.get(endpoint);
  return ItemPreview.fromJson(response.data[3]);
}
