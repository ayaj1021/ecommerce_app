import 'dart:math';

import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/constants/constants.dart';
import 'package:furniture_ecommerce_app/screens/auth_screen/login_screen.dart';
import 'package:furniture_ecommerce_app/styles/app_styles.dart';

import 'signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  bool isShowSignUp = false;

  late AnimationController animationController;
  late Animation<double> animationTextRotate;

  void setUpAnimation() {
    animationController =
        AnimationController(vsync: this, duration: defaultDuration);

    animationTextRotate =
        Tween<double>(begin: 0, end: 90).animate(animationController);
  }

  void upDateValue() {
    setState(() {
      isShowSignUp = !isShowSignUp;
    });

    isShowSignUp
        ? animationController.forward()
        : animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            return Stack(
              children: [
                //transition animation
                //login
                AnimatedPositioned(
                  duration: defaultDuration,
                  left: isShowSignUp ? -size.width * 0.76 : 0,
                  height: size.height,
                  width: size.width * 0.88,
                  child: Container(
                    color: AppStyles.primaryColor,
                    child: const LoginScreen(),
                  ),
                ),

                //sign up screen
                AnimatedPositioned(
                    duration: defaultDuration,
                    left: isShowSignUp ? size.width * 0.12 : size.width * 0.88,
                    height: size.height,
                    width: size.width * 0.88,
                    child: const SignupScreen()),
//login text animation
                AnimatedPositioned(
                  duration: defaultDuration,
                  top:
                      isShowSignUp ? size.height / 2 - -90 : size.height * 0.15,
                  left: isShowSignUp ? 0 : size.width * 0.44 - 80,
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: AppStyles.headLine2.copyWith(
                        color: isShowSignUp ? Colors.white : Colors.white,
                        fontSize: isShowSignUp ? 20 : 24),
                    child: Transform.rotate(
                      alignment: Alignment.topLeft,
                      angle: -animationTextRotate.value * pi / 180,
                      child: InkWell(
                        onTap: () {
                          if (isShowSignUp) {
                            upDateValue();
                          } else {
                            //login
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding * 0.75),
                          width: 160,
                          child: const Text(
                            'Login',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //signup text animation
                AnimatedPositioned(
                  duration: defaultDuration,
                  top: !isShowSignUp
                      ? size.height / 2 - -90
                      : size.height * 0.15,
                  right: isShowSignUp ? size.width * 0.44 - 80 : 0,
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: AppStyles.headLine2.copyWith(
                        color: isShowSignUp
                            ? AppStyles.primaryColor
                            : AppStyles.primaryColor,
                        fontSize: !isShowSignUp ? 20 : 24),
                    child: Transform.rotate(
                      alignment: Alignment.topRight,
                      angle: (90 - animationTextRotate.value) * pi / 180,
                      child: GestureDetector(
                        onTap: () {
                          if (isShowSignUp) {
                            //signup
                          } else {
                            upDateValue();
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding * 0.75),
                          width: 160,
                          child: const Text(
                            'Sign Up',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
