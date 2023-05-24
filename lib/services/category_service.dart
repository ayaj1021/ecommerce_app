import 'package:dio/dio.dart';
import 'package:furniture_ecommerce_app/models/categories_model.dart';

Future<Categories> getCategories() async {
  String endpoint = 'https://fakestoreapi.com/products/categories';

  var dio = Dio();

  final response = await dio.get(endpoint);
  return Categories.fromJson(response.data);
}
