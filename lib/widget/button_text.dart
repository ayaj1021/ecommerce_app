import 'package:flutter/material.dart';

import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          buttonText,
          style: AppStyles.buttonText,
        ),
      ),
    );
  }
}