import 'package:flutter/material.dart';
import 'package:responsiveapp/widgets/AllExpensesHeader.dart';
import 'package:responsiveapp/widgets/CustomBackGround.dart';
import 'package:responsiveapp/widgets/ExpensesColumn.dart';
import 'package:responsiveapp/widgets/all_expenses_listview.dart';
import 'package:responsiveapp/widgets/allexpensesitem.dart';

class AllExpenses extends StatelessWidget {
  const 
  AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 20,
      Child: ExpensesColumn(),
    );
  }
}
