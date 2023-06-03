import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/providers/cart_provider.dart';
import 'package:furniture_ecommerce_app/services/product_service.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:nb_utils/nb_utils.dart';

class ChairCategory extends ConsumerWidget {
  ChairCategory({super.key});

  // List<ItemPreview> itemsList = getChairItemDetails();

  final fetchProductsProvider = FutureProvider((ref) async {
    final furnitureRepository = ref.read(getProductsProvider);
    final furniture = await furnitureRepository.getItemData();
    return furniture;
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(fetchProductsProvider).when(data: (itemsPreview) {
        return SingleChildScrollView(
            child: Column(children: [
          //first scrolling items
          SizedBox(
            height: 380,
            width: 600,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // itemCount: productsData.length,
                itemBuilder: (_, index) {
                  final value = itemsPreview[index];
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
                          height: 150,
                          width: 180,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade300),
                          child: Image.network(
                            value.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                value.title,
                                style: AppStyles.itemTitle,
                                overflow: TextOverflow.ellipsis,
                              ),
                              10.height,
                              Text(value.category),
                              15.height,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      value.category.toString(),
                                      style: AppStyles.itemTitle,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      var cart = ItemPreview(
                                        image: value.image,
                                        title: value.title,
                                        category: value.category,
                                        price: value.price,
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
          ),
        ]));
      }, error: (error, trace) {
        return Text(error.toString());
      }, loading: () {
        return Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.blue, size: 20),
        );
      }),
    );
  }
}
