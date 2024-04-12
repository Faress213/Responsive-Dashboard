import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveapp/models/userinfomodel.dart';
import 'package:responsiveapp/utils/app_images.dart';
import 'package:responsiveapp/utils/appstyles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userinfo,
  });
  final UserInfoModel userinfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          userinfo.image,
          fit: BoxFit.fill,
        ),
        title: Text(
          userinfo.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userinfo.subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
