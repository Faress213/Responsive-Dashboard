import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/sizeconfig.dart';

double getResponsiveItem(BuildContext context,{required double itemsize}) {
  double ScaleFactor = getScaleFcator(context);
  double responsiveText = itemsize * ScaleFactor;
  double MinLimit = itemsize * .8;
  double MaxLimit = itemsize * 1.2;
  return responsiveText.clamp(MinLimit, MaxLimit);
}

double getScaleFcator(BuildContext context) {
  double width=MediaQuery.sizeOf(context).width;
  if ( width< SizeConfig.Tablet) {
    return width / 550;
  } else if (width < SizeConfig.Desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
