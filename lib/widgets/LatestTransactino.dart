import 'package:flutter/material.dart';
import 'package:responsiveapp/models/userinfomodel.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/widgets/userinfolisttile.dart';
class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});


  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subtitle: 'Josua Nunito@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Madrani Andi",
        subtitle: 'Madraniadi20@gmail')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: items
              .map((e) => IntrinsicWidth(child: UserInfoListTile(userinfo: e)))
              .toList(),
        ),
      ),
    );
  }
}
