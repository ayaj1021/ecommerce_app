import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/services/add_to_cart_service.dart';

final getAddToCart = FutureProvider((ref) => addToCart());


final cartProvider = StateProvider<List<ItemPreview>>((ref) => []);

class CartNotifier extends StateNotifier<List<ItemPreview>> {
  
  CartNotifier() : super([]);

  

  void addItem(ItemPreview item) {
    state = [...state, item];
  }

  void removeItem(ItemPreview item) {
    state = List.from(state);
  }
}
