import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/providers/cart_provider.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:nb_utils/nb_utils.dart';

class CupboardCategory extends ConsumerWidget {
  CupboardCategory({super.key});

  List<ItemPreview> itemsList = getCupboardItemDetails();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          //first scrolling items
          SizedBox(
            height: 360,
            width: 600,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: itemsList.length,
                itemBuilder: (_, index) {
                  return Container(
                    width: 200,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 180,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade300),
                          child: Image.asset(
                            itemsList[index].img,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemsList[index].itemName,
                                style: AppStyles.itemTitle,
                              ),
                              10.height,
                              Text(itemsList[index].itemType),
                              15.height,
                              Row(
                                children: [
                                  Text(
                                    itemsList[index].itemPrice,
                                    style: AppStyles.itemTitle,
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      var cart = ItemPreview(
                                        img: itemsList[index].img,
                                        itemName: itemsList[index].itemName,
                                        itemPrice: itemsList[index].itemPrice,
                                        itemType: itemsList[index].itemType,
                                        //qty: 1
                                      );
                                      ref.read(cartProvider).add(cart);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              duration:
                                                  Duration(milliseconds: 900),
                                              content: Text(
                                                  'Your Item has been added to cart')));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppStyles.primaryColor),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
