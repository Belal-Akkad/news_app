import 'package:flutter/material.dart';
import 'package:news_app/core/functions/get_responsive_size.dart';

class MyAppStyle {
  MyAppStyle({required this.context});
  final BuildContext context;
  TextStyle get stylesReqular16 => TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.orange,
        fontFamily: 'DMSerifText',
        fontSize: getResponsiveSize(context, 16),
      );
  TextStyle get stylesReqular12 => TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontFamily: 'DMSerifText',
        fontSize: getResponsiveSize(context, 12),
      );
  TextStyle get stylesReqular10 => TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: 'DMSerifText',
        fontSize: getResponsiveSize(context, 10),
      );
  TextStyle get stylesBold20 => TextStyle(
        fontFamily: 'DMSerifText',
        color: Colors.black,
        fontSize: getResponsiveSize(context, 20),
        fontWeight: FontWeight.bold,
      );
  TextStyle get stylesBold16 => TextStyle(
        fontFamily: 'DMSerifText',
        fontSize: getResponsiveSize(context, 16),
        color: Colors.black.withOpacity(0.6),
        fontWeight: FontWeight.bold,
      );
  TextStyle get stylesBold12 => TextStyle(
        fontFamily: 'DMSerifText',
        fontSize: getResponsiveSize(context, 12),
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );
  TextStyle get stylesBold18 => TextStyle(
        fontFamily: 'DMSerifText',
        fontSize: getResponsiveSize(context, 18),
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );
}
