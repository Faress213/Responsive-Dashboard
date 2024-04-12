import 'package:flutter/material.dart';
import 'package:responsiveapp/models/Expensesmodel.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/Expensesitem.dart';
import 'package:responsiveapp/widgets/allexpensesitem.dart';

int isSelected = 0;

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final data = [
    Expenses(
        Image: Assets.imagesBalance,
        category: "Balance",
        date: "29 April",
        price: "\$20,129"),
    Expenses(
        Image: Assets.imagesIncome,
        category: "Income",
        date: "29 April",
        price: "\$20,129"),
    Expenses(
        Image: Assets.imagesExpenses,
        category: "Expenses",
        date: "29 April",
        price: "\$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = 0;
              });
            },
            child: ExpensesItem(
              data: data[0],
              isSelected: isSelected == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = 1;
              });
            },
            child: ExpensesItem(
              data: data[1],
              isSelected: isSelected == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = 2;
              });
            },
            child: ExpensesItem(
              data: data[2],
              isSelected: isSelected == 2,
            ),
          ),
        ),
      ],
    );
  }
}
