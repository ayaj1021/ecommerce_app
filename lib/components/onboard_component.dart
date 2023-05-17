import 'package:flutter/material.dart';

import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:furniture_ecommerce_app/widget/button_text.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class OnboardingScreenComponent extends StatelessWidget {
  const OnboardingScreenComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Builder(
      builder: (context) {
        MediaQueryData mediaQuery = MediaQuery.of(context);

        return Column(
          children: [
            SizedBox(
              width: mediaQuery.size.width * 10,
              height: mediaQuery.size.height * 0.6,
              // height: 500,
              child: Image.asset(
                'images/onboard_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enjoy Your Online Shopping.',
                    style: AppStyles.headLine1,
                  ),
                  20.height,
                  Text(
                    'Browse through all categories and the best furniture for your dream house.',
                    style: AppStyles.bodyText,
                  ),
                  40.height,
                  GestureDetector(
                    onTap: () {
                      context.go('/bottomnav');
                    },
                    child: const Button(
                      buttonText: 'Get Started',
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
