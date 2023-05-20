import 'package:flutter/material.dart';


 class  FormValidator{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } if (!value.contains('@gmail.com')) {
      return 'Please enter a valid email';
    }
    return null;
  }
}