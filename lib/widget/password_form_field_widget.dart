import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/constants/constants.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';

class PasswordFormFieldWidget extends StatelessWidget {
  const PasswordFormFieldWidget({
    super.key,
    required this.passwordText,
    required this.containerColor,
    required this.hintTextColor,
    required this.textColor,
  });

  final String passwordText;
  final Color containerColor, hintTextColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding * 0.1,
          horizontal: defaultPadding,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: containerColor,
            )),
        child: TextFormField(
          style: TextStyle(color: hintTextColor),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: passwordText,
            hintStyle: AppStyles.bodyText.copyWith(color: hintTextColor),
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
