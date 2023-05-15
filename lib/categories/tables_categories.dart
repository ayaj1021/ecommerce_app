import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/models/item_preview_model.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:nb_utils/nb_utils.dart';

class TableCategory extends StatelessWidget {
  TableCategory({super.key});

  List<ItemPreview> itemsList = getTableItemDetails();

  @override
  Widget build(BuildContext context) {
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
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppStyles.primaryColor),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
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
