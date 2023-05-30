import 'package:dio/dio.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

Future<List<ItemPreview>> getItemData() async {
  String endpoint = 'https://fakestoreapi.com/products';

  var dio = Dio();
  final response = await dio.get(endpoint);
  List<ItemPreview> itemList = [];
  for (int i = 0; i < response.data.length; i++) {
    ItemPreview item = ItemPreview.fromJson(response.data);
    itemList.add(item);
  }
  return itemList;
  // return ItemPreview.fromJson(response.data);
}
