import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/components/cart_top_header_component.dart';
import 'package:furniture_ecommerce_app/constants/constants.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:nb_utils/nb_utils.dart';

class CartItemScreen extends ConsumerWidget {
  CartItemScreen({super.key});

  // List<ItemPreview> itemsList = getChairItemDetails();
  // final List<ItemPreview> removeList = [];

  // final getAddToCart = FutureProvider((ref) => getItemData());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppStyles.scaffoldBgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            const CartTopHeaderItems(),
            20.height,
            Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHeight(context) * 0.20,
                      width: screenWidth(context) * 0.60,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
