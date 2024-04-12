import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/appstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.icon});
  final String hint;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
          hintText: hint,
          hintMaxLines: 1,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
          filled: true,
          fillColor: const Color(0xffFAFAFA),
          border: OutLinedBorder(),
          enabledBorder: OutLinedBorder()),
    );
  }

  OutlineInputBorder OutLinedBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xffFAFAFA)));
  }
}
