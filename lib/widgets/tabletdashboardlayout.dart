import 'package:flutter/material.dart';
import 'package:responsiveapp/views/CenterSection.dart';
import 'package:responsiveapp/views/MobileLayout.dart';
import 'package:responsiveapp/views/RightSection.dart';
import 'package:responsiveapp/widgets/Allexpenses.dart';
import 'package:responsiveapp/widgets/CustomDrawer.dart';

class TabletLayoutDashboard extends StatelessWidget {
  const TabletLayoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: MobileLayoutDashboard()),
      ],
    );
  }
}
