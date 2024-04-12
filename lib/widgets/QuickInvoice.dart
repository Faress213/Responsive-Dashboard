import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/CustomBackGround.dart';
import 'package:responsiveapp/widgets/QuickInvoiceColumn.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child:
            CustomBackGroundContainer(Child: QuickInvoiceColumn(), padding: 0),
      ),
    );
  }
}
