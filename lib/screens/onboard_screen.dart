import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_app/components/onboard_component.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: ListView(
      children: const [
        OnboardingScreenComponent(),
      ],
    ));
  }
}
