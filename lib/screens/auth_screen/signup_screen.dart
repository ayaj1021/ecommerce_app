import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/constants/constants.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:furniture_ecommerce_app/widget/password_form_field_widget.dart';
import 'package:furniture_ecommerce_app/widget/text_form_field_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.13,
      ),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            TextFormFieldWidget(
              textColor: AppStyles.primaryColor,
              containerColor: AppStyles.primaryColor,
              fieldText: 'Enter Email',
            ),
            PasswordFormFieldWidget(
              containerColor: AppStyles.primaryColor,
              textColor: AppStyles.primaryColor,
              hintTextColor: AppStyles.primaryColor,
              passwordText: 'Enter Password',
            ),
            PasswordFormFieldWidget(
              containerColor: AppStyles.primaryColor,
              textColor: AppStyles.primaryColor,
              hintTextColor: AppStyles.primaryColor,
              passwordText: 'Confirm Password',
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(
                vertical: defaultPadding * 0.9,
                //horizontal: defaultPadding * 0.9,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppStyles.primaryColor),
              child: Center(
                child: Text('Sign Up', style: AppStyles.buttonText),
              ),
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account?',
                          style:
                              AppStyles.bodyText.copyWith(color: Colors.black),
                          children: [
                            TextSpan(
                                text: '    Sign In',
                                style: AppStyles.bodyText.copyWith(
                                    color: AppStyles.primaryColor,
                                    fontWeight: FontWeight.bold))
                          ]),
                    )),
              ],
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
