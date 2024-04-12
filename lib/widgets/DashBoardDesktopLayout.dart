import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/views/CenterSection.dart';
import 'package:responsiveapp/views/RightSection.dart';
import 'package:responsiveapp/widgets/Allexpenses.dart';
import 'package:responsiveapp/widgets/CustomDrawer.dart';
import 'package:responsiveapp/widgets/MyCard.dart';
import 'package:responsiveapp/widgets/QuickInvoice.dart';
import 'package:responsiveapp/widgets/userinfolisttile.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: SingleChildScrollView(child: CenterSection())),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(child: RightSection()),
        )
      ],
    );
  }
}
