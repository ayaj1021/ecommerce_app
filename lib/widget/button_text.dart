import 'package:flutter/material.dart';

import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        MediaQueryData mediaQuery = MediaQuery.of(context);
        return Container(
          height: mediaQuery.size.height * 0.07,
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
      },
    );
  }
}
