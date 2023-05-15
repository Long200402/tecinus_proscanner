import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemFolder extends StatelessWidget {
  const CustomItemFolder({
    Key? key,
    required this.title,
    required this.countItem,
  }) : super(key: key);

  final String title;
  final String countItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 112.h,
            height: 112.h,
            decoration: BoxDecoration(color: AppColors.primaryFFF5DD, borderRadius: BorderRadius.circular(18)),
            child: Assets.icon.folder.image(
              height: 45.h,
              width: 45.h,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: AppStyles.t14h19w500.copyWith(
              color: AppColors.primary051E56,
            ),
          ),
          SizedBox(
            height: 9.h,
          ),
          Text(
            '$countItem items',
            style: AppStyles.t12h16w400.copyWith(
              color: AppColors.primary9CA5BA,
            ),
          ),
        ],
      ),
    );
  }
}
