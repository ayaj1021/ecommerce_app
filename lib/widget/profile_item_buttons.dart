import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileItemButtons extends StatelessWidget {
  const ProfileItemButtons({
    super.key,
    required this.buttonName,
    required this.iconData,
    this.arrowIconData,
  });

  final String buttonName;
  final IconData iconData;
  final IconData? arrowIconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 15, right: 20, bottom: 20),
      height: 20,
      child: Row(
        children: [
          Icon(
            iconData,
            color: AppStyles.primaryColor,
          ),
          10.width,
          Text(
            buttonName,
            style: AppStyles.itemTitle.copyWith(fontSize: 18),
          ),
          const Spacer(),
          Icon(arrowIconData),
        ],
      ),
    );
  }
}
