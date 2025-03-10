import 'package:flutter/material.dart';

double getResponsiveSize(BuildContext context, int size) {
  double width = MediaQuery.sizeOf(context).width;
  double scaleFactor = width / 500;
  double responsiveFontSize = scaleFactor * size;
  return responsiveFontSize;
}
