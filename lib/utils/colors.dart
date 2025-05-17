import 'package:flutter/material.dart';

class AppColors {
  static final Color bgColor = Colors.green.shade200;

  static final List<BoxShadow> shadows = [
    BoxShadow(
      color: const Color.fromRGBO(255, 255, 255, 0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 25,
    ),

    BoxShadow(
      color: Color.fromRGBO(
        0,
        100,
        0,
        0.2,
      ), // approx. green.shade900 with 0.2 opacity
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20,
    ),
  ];
}
