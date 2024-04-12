import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/appstyles.dart';
import 'package:responsiveapp/widgets/customtextfield.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.text, required this.hint, this.icon});
  final String text;
  final String hint;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context),
        ),
        CustomTextField(
          hint: hint,
          icon: icon,
        )
      ],
    );
  }
}
