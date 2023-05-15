import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_theme/app_colors.dart';
import '../../../../common/app_theme/app_styles.dart';

class ItemCustom extends StatelessWidget {
  const ItemCustom({
    Key? key,
    required this.iconSvg,
    required this.title,
  }) : super(key: key);

  final Widget iconSvg;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconSvg,
        SizedBox(
          height: 5.h,
        ),
        Text(
          title,
          style: AppStyles.t10h14w600.copyWith(
            color: AppColors.primary0DABAB,
          ),
        )
      ],
    );
  }
}
