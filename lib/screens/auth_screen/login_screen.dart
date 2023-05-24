import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/constants/constants.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';
import 'package:furniture_ecommerce_app/widget/form_validator.dart';
import 'package:furniture_ecommerce_app/widget/password_form_field_widget.dart';
import 'package:furniture_ecommerce_app/widget/text_form_field_widget.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController textEditingController = TextEditingController();
  final FormValidator formValidator = FormValidator();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.13,
      ),
      child: Form(
        key: formValidator.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            TextFormFieldWidget(
              textEditingController: textEditingController,
              textColor: Colors.white,
              containerColor: Colors.white,
              fieldText: 'Enter Email',
            ),
            const PasswordFormFieldWidget(
              textColor: Colors.white,
              containerColor: Colors.white,
              hintTextColor: Colors.white,
              passwordText: 'Enter Password',
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: AppStyles.buttonText,
                    ))
              ],
            ),
            GestureDetector(
              onTap: () {
               
                 context.go('/bottomnav');
              },
              child: Container(
                width: size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: defaultPadding * 0.9,
                  //horizontal: defaultPadding * 0.9,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.white),
                child: Center(
                  child: Text(
                    'Login',
                    style: AppStyles.buttonText
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                 
                },
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: AppStyles.bodyText.copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                            text: '    Sign Up',
                            style: AppStyles.bodyText.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ]),
                )),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

formValidator() {
}
