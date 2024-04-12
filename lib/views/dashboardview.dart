import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/sizeconfig.dart';
import 'package:responsiveapp/views/MobileLayout.dart';
import 'package:responsiveapp/widgets/CustomDrawer.dart';
import 'package:responsiveapp/widgets/DashBoardDesktopLayout.dart';
import 'package:responsiveapp/widgets/adaptivelayout.dart';
import 'package:responsiveapp/widgets/tabletdashboardlayout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.Tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffE5E5E5),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.Tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
          mobileLayout: ((context) => const MobileLayoutDashboard()),
          DesktopLayout: ((context) => const DashBoardDesktopLayout()),
          TabletLayout: ((context) => const TabletLayoutDashboard())),
    );
  }
}
