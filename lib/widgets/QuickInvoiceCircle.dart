import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/utils/app_images.dart';

class QuickInvoiceCircle extends StatelessWidget {
  const QuickInvoiceCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Color(0xffFAFAFA),
      radius: 24,
      child: Icon(
        Icons.add,
        color: Color(0xff4EB7F2),
      ),
    );
  }
}
