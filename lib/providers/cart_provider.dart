import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItem {
  final String img;
  final String itemName;
  final String itemType;
  final String itemPrice;
  final int qty;

  CartItem({
    required this.img,
    required this.itemName,
    required this.itemType,
    required this.itemPrice,
    required this.qty,
  });
}

final cartProvider = StateNotifierProvider<CartNotifier, List<CartItem>>(
    (ref) => CartNotifier());

class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addItem(CartItem item) {
    state = [...state, item];
  }
}


