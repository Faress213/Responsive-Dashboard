import 'package:flutter/material.dart';

class SizeConfig {
  static const double Tablet = 800;
  static const double Desktop = 1200;
  static late double width, height;
  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
     height = MediaQuery.sizeOf(context).height;
    
  }
}
