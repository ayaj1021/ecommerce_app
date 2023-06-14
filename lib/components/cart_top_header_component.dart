
import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class CartTopHeaderItems extends StatelessWidget {
  const CartTopHeaderItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300,
              ),
              shape: BoxShape.circle),
          child: const Icon(Icons.arrow_back_ios),
        ),
        Text(
          'Cart',
          style: AppStyles.headLine2,
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300,
              ),
              shape: BoxShape.circle),
          child: const Icon(Icons.delete_outline),
        ),
      ],
    );
  }
}
