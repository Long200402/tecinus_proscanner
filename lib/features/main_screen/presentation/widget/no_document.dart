import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoDocument extends StatelessWidget {
  const NoDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.empty.svg(),
        Text(
          'No Documents',
          style: AppStyles.t18h24w700.copyWith(
            color: AppColors.primary051E56,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Start scanning your documents',
          style: AppStyles.t18h24w400.copyWith(
            color: AppColors.primary051E56
          ),
        )
      ],
    );
  }
}
