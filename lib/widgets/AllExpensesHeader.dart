import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/utils/appstyles.dart';
import 'package:responsiveapp/widgets/RangeOptions.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key, required this.text, required this.widget});
  final String text;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        widget
      ],
    );
  }
}
