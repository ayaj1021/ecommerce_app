import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/providers/check_box_provider.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<ItemPreview> itemsList = getChairItemDetails();
    final isChecked = ref.watch(checkBoxProvider);
    return Scaffold(
      backgroundColor: AppStyles.scaffoldBgColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              //  height: 220,
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(10),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              activeColor: AppStyles.primaryColor,
                              onChanged: (newBool) {
                                ref.read(checkBoxProvider.notifier).state =
                                    newBool!;
                              })
                        ],
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
