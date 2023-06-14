import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';

// final getAddToCart = FutureProvider((ref) async {
//   final addCartRepository = ref.read(addCartProvider);
//   final cart = await addCartRepository.addToCart();
// });

final cartProvider = StateNotifierProvider<CartNotifier, List<ItemPreview>>((ref) => CartNotifier());

class CartNotifier extends StateNotifier<List<ItemPreview>> {
  CartNotifier() : super([]);

  void addItem(ItemPreview item) {
    state = [...state, item];
  }

  void removeItem(ItemPreview item) {
    state = state.where((e) => e != item).toList();
  }
}
