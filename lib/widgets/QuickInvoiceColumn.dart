import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/AllExpensesHeader.dart';
import 'package:responsiveapp/widgets/LatestTransactino.dart';
import 'package:responsiveapp/widgets/Latesttransation.dart';
import 'package:responsiveapp/widgets/QuickInvoiceCircle.dart';
import 'package:responsiveapp/widgets/customButton.dart';
import 'package:responsiveapp/widgets/customtextfield.dart';
import 'package:responsiveapp/widgets/titletextfield.dart';

class QuickInvoiceColumn extends StatelessWidget {
  const QuickInvoiceColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child:
                MyHeader(text: "Quick Invoice", widget: QuickInvoiceCircle()),
          ),
          const LatestTransaction(),
          const Divider(
            height: 48,
          ),
          const Row(
            children: [
              Expanded(
                  child: TitleTextField(
                      text: "Customer name", hint: "Type Customer name")),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TitleTextField(
                      text: "Customer Email", hint: "Type Customer email")),
            ],
          ),
          Row(
            children: [
              const Expanded(
                  child: TitleTextField(
                      text: "Item name", hint: "Type Customer name")),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TitleTextField(
                  text: "Item amount",
                  hint: "Type Customer email",
                  icon: Transform.rotate(
                    angle: 3 * pi / 2,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffAAAAAA),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: CustomButton(
                      label: "Add more Details",
                      bgColor: Colors.white,
                      txtColor: Color(0xff4EB7F2)),
                ),
              ),
              Expanded(
                child: CustomButton(
                    label: "Send Money",
                    bgColor: Color(0xff4EB7F2),
                    txtColor: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
