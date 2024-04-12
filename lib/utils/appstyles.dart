import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/responsivefont.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w900);
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveItem(context, itemsize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500);
  }
}
