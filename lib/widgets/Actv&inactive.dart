import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveapp/models/Expensesmodel.dart';
import 'package:responsiveapp/utils/appstyles.dart';
import 'package:responsiveapp/widgets/Expensesitemheader.dart';

class InActiveExpense extends StatelessWidget {
  const InActiveExpense({
    super.key,
    required this.data,
  });

  final Expenses data;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xffE5E5E5)),
                borderRadius: BorderRadius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExpensesItemHeader(
                imageBackgroundColor: Colors.white,
                imagecolor: const Color(0xff4EB7F2),
                iconColor: const Color(0xff064061),
                image: data.Image,
              ),
              const SizedBox(
                height: 34,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.category,
                  style: AppStyles.styleSemiBold16(context),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.date,
                  style: AppStyles.styleRegular14(context),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.price,
                  style: AppStyles.styleSemiBold24(context),
                ),
              )
            ],
          ),
        ));
  }
}

class ActiveExpense extends StatelessWidget {
  const ActiveExpense({
    super.key,
    required this.data,
  });

  final Expenses data;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xffE5E5E5)),
                borderRadius: BorderRadius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesItemHeader(
                iconColor: Colors.white,
                image: data.Image,
                imagecolor: Colors.white,
                imageBackgroundColor: Colors.white.withOpacity(.1),
              ),
              const SizedBox(
                height: 34,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.category,
                  style: AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.date,
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.price,
                  style: AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
