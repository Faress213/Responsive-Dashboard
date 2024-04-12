import 'package:flutter/material.dart';
import 'package:responsiveapp/models/draweritemmodel.dart';
import 'package:responsiveapp/widgets/active&inactive.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int Activeindex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: widget.items.length,
    
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  Activeindex = index;
                });
              },
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Activeindex != index
                      ? InActiveDrawerItem(drawerItemModel: widget.items[index])
                      : ActiveDrawerItem(
                          drawerItemModel: widget.items[index])));
        });
  }
}
