import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

// class CartItem {
//   final String img;
//   final String itemName;
//   final String itemType;
//   final String itemPrice;
//   final int qty;

//   CartItem({
//     required this.img,
//     required this.itemName,
//     required this.itemType,
//     required this.itemPrice,
//     required this.qty,
//   });
// }

final cartProvider = StateNotifierProvider<CartNotifier, List<ItemPreview>>(
    (ref) => CartNotifier());

class CartNotifier extends StateNotifier<List<ItemPreview>> {
  CartNotifier() : super([]);

  void addItem(ItemPreview item) {
    state = [...state, item];
  }

  
}


