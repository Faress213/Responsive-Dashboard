import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveapp/widgets/AllExpensesHeader.dart';
import 'package:responsiveapp/widgets/RangeOptions.dart';
import 'package:responsiveapp/widgets/all_expenses_listview.dart';

class ExpensesColumn extends StatelessWidget {
  const ExpensesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyHeader(
          text: "All Expenses",
          widget: RangeOptions(),
        ),
        SizedBox(
          height: 16,
        ),
        AllExpensesListView()
      ],
    );
  }
}
