import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/providers/cart_provider.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:furniture_ecommerce_app/widget/top_icons_button.dart';
import 'package:nb_utils/nb_utils.dart';

class CartItemScreen extends ConsumerWidget {
  CartItemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isChecked = true;
    final cartItems = ref.watch(cartProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TopIconsButton(iconData: Icons.arrow_back_ios),
                Text(
                  'Cart',
                  style: AppStyles.headLine2,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const TopIconsButton(
                    iconData: Icons.delete_outline,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: cartItems.length,
                    itemBuilder: (_, index) {
                      final items = cartItems[index];
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 12,
                        ),
                        //  height: 130,
                        margin: const EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(value: isChecked, onChanged: (newBool) {}),
                            Container(
                              height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(items.img),
                            ),
                            15.width,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items.itemName,
                                  style: AppStyles.itemTitle,
                                ),
                                10.height,
                                Text(items.itemType),
                                28.height,
                                Text(
                                  items.itemPrice,
                                  style: AppStyles.itemTitle,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            20.height,
            Text(
              'Recently View',
              style: AppStyles.headLine2,
            )
          ],
        ),
      ),
    );
  }
}
