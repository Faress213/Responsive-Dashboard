
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/appstyles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: const Color(0xffF1F1F1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              "Monthly",
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff064061)),
            ),
            const SizedBox(
              width: 18,
            ),
            Transform.rotate(
              angle: 3 * pi / 2,
              child: const Icon(Icons.arrow_back_ios_new_outlined),
            ),
          ],
        ),
      ),
    );
  }
}