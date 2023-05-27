import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/providers/cart_provider.dart';
import 'package:furniture_ecommerce_app/providers/check_box_provider.dart';
import 'package:furniture_ecommerce_app/services/product_service.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:furniture_ecommerce_app/widget/button_text.dart';
import 'package:furniture_ecommerce_app/widget/top_icons_button.dart';
import 'package:nb_utils/nb_utils.dart';

class CartItemScreen extends ConsumerWidget {
  CartItemScreen({super.key});

  // List<ItemPreview> itemsList = getChairItemDetails();
final  List<ItemPreview> removeList = [];

  final getAddToCart = FutureProvider((ref) => getItemData());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addCart = ref.watch(getAddToCart);
    final cartItems = ref.watch(cartProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 60,
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
                  onTap: () {
                    //  ref.read(cartProvider.notifier).state.remove();
                  },
                  child: const TopIconsButton(
                    iconData: Icons.delete_outline,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: cartItems.length,
                      itemBuilder: (_, index) {
                        final items = cartItems[index];
                        return addCart.when(data: (value) {
                          return Expanded(
                            child: Container(
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
                                  Checkbox(
                                      activeColor: AppStyles.primaryColor,
                                      value: ref
                                          .read(checkBoxProvider.notifier)
                                          .state
                                          .contains(index),
                                      onChanged: (newBool) {
                                        print(ref.watch(checkBoxProvider));
                                        if (ref
                                            .read(checkBoxProvider.notifier)
                                            .state
                                            .contains(index)) {
                                          ref
                                              .read(checkBoxProvider.notifier)
                                              .state
                                              .remove(index);
                                        } else {
                                          ref
                                              .read(checkBoxProvider.notifier)
                                              .state
                                              .add(index);
                                          print(ref.watch(checkBoxProvider));
                                        }
                                      }),
                                  Container(
                                    height: 100,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      value.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  15.width,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        value.title,
                                        style: AppStyles.itemTitle
                                            .copyWith(fontSize: 2),
                                      ),
                                      10.height,
                                      Text(value.category),
                                      28.height,
                                      Text(
                                        value.price.toString(),
                                        style: AppStyles.itemTitle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }, error: (error, stackTrace) {
                          return Text(error.toString());
                        }, loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        });
                      }),
                  20.height,
                  Text(
                    'Recently View',
                    style: AppStyles.headLine2,
                  ),
                  20.height,
                  const Button(
                    buttonText: 'Proceed to Checkout',
                  )
                ],
              ),
            ),

            // Expanded(
            //   child: SizedBox(
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         shrinkWrap: true,
            //         itemBuilder: (_, index) {
            //           return Container(
            //               height: 130,
            //               width: 250,
            //               margin:
            //                   const EdgeInsets.only(left: 5, right: 6, top: 10),
            //               decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   borderRadius: BorderRadius.circular(8)),
            //               child: Container(
            //                 height: 120,
            //                 width: 180,
            //                 margin: const EdgeInsets.all(10),
            //                 decoration: BoxDecoration(
            //                   color: Colors.grey.shade300,
            //                   borderRadius: BorderRadius.circular(8),
            //                 ),
            //               ));
            //         }),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
