import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.DesktopLayout,
      required this.TabletLayout});
  final WidgetBuilder mobileLayout, DesktopLayout, TabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 1200) {
        return TabletLayout(context);
      } else {
        return DesktopLayout(context);
      }
    });
  }
}
