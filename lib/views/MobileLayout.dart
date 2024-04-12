import 'package:flutter/material.dart';
import 'package:responsiveapp/views/CenterSection.dart';
import 'package:responsiveapp/views/RightSection.dart';

class MobileLayoutDashboard extends StatelessWidget {
  const MobileLayoutDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [CenterSection(),
         RightSection()],
      ),
      
    );
  }
}
