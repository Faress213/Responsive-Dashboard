import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/Allexpenses.dart';
import 'package:responsiveapp/widgets/QuickInvoice.dart';

class CenterSection extends StatelessWidget {
  const CenterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 24),
      child: Column(
        children: [AllExpenses(), QuickInvoice()],
      ),
    );
  }
}
