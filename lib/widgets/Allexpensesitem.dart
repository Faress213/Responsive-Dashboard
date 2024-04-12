import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/Expensesitem.dart';
import 'package:responsiveapp/widgets/Expensesitemheader.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Container(
        
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: const Column(
            children: [
              Row(
                children: [
                  // Expanded(
                  //     child: ExpensesItem(
                    
                  // )),
                  // Expanded(
                  //     child: ExpensesItem(
                  //   image: Assets.imagesIncome,
                  //   category: "Income",
                  //   Date: "April 2022",
                  //   Price: "\$20,129",
                  // )),
                  // Expanded(
                  //     child: ExpensesItem(
                  //   image: Assets.imagesExpenses,
                  //   category: "Expenses",
                  //   Date: "April 2022",
                  //   Price: "\$20,129",
                  // )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
