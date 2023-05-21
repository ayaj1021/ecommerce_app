import 'package:flutter/material.dart';

const double defaultPadding = 16.0;
const Duration defaultDuration = Duration(milliseconds: 300);
double screenWidth(BuildContext context) {
  
  return MediaQuery.of(context).size.width;
}


double screenHeight(BuildContext context) {
  
  return MediaQuery.of(context).size.height;
}