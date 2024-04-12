import 'package:flutter/material.dart';
import 'package:responsiveapp/models/Expensesmodel.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/utils/appstyles.dart';
import 'package:responsiveapp/widgets/Expensesitemheader.dart';

import 'Actv&inactive.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.data,
    required this.isSelected,
  });
  final Expenses data;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected? ActiveExpense(data: data):InActiveExpense(data: data);
  }
}
