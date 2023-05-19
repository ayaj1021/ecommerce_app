import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/constants/constants.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.fieldText,
    required this.containerColor,
    required this.textColor,
  });
  final String fieldText;
  final Color containerColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding * 0.1,
        horizontal: defaultPadding,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: containerColor)),
      child: TextFormField(
        style: TextStyle(
          color: textColor,
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: fieldText,
            hintStyle: AppStyles.bodyText.copyWith(color: textColor)),
      ),
    );
  }
}
