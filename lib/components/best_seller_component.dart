import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:nb_utils/nb_utils.dart';

class BestSellerComponent extends StatelessWidget {
  BestSellerComponent({super.key});

  List<ItemPreview> bestSellerList = getChairItemDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 320,
              width: 370,
              child: ListView.builder(
                  itemCount: bestSellerList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 300,
                      height: 300,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 150,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(8)),
                            child: Image.asset(bestSellerList[index].img),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              10.height,
                              Text(
                                bestSellerList[index].itemName,
                                style: AppStyles.itemTitle,
                              ),
                              10.height,
                              Text(bestSellerList[index].itemType),
                              10.height,
                              Text(
                                bestSellerList[index].itemPrice,
                                style: AppStyles.itemTitle,
                              ),
                            ],
                          ),
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
