import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key,
    required this.Child, required this.padding,
  });
  final Widget Child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Padding(padding:  EdgeInsets.all(padding), child: Child),
    );
  }
}
