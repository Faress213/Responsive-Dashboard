import 'package:flutter/material.dart';
import 'package:responsiveapp/utils/appstyles.dart';
import 'package:responsiveapp/widgets/MyCard.dart';
import 'package:responsiveapp/widgets/Pageview.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Card",
            style: AppStyles.styleSemiBold20(context),
          ),
          const MyCard(),
          const CustomPageView()
        ],
      ),
    );
  }
}
