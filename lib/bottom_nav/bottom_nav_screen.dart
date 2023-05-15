import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:furniture_ecommerce_app/providers/bottomnav_index_provider.dart';
import 'package:furniture_ecommerce_app/screens/home_screen.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class BottomNavScreen extends ConsumerWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedIndex = ref.watch(indexValueProvider);

    List<Widget> pages = [
      HomeScreen(),
      const Center(child: Text('Favorite')),
      const Center(child: Text('Scan')),
      const Center(child: Text('Cart')),
      const Center(child: Text('Profile'))
    ];

    return Scaffold(
      backgroundColor: AppStyles.scaffoldBgColor,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppStyles.primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = ref.read(indexValueProvider.notifier).state = index;
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner_outlined), label: 'Scan'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ]),
      body: pages[selectedIndex],
    );
  }
}
