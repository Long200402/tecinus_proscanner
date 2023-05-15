import 'package:flutter/material.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme/app_colors.dart';
import '../../app_theme/app_styles.dart';

class BaseHeaderBts extends StatelessWidget {
  const BaseHeaderBts({
    Key? key,
    required this.title,
    required this.isDisplayClose,
    this.colorTitle
  }) : super(key: key);

  final String title;
  final bool isDisplayClose;
  final Color? colorTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                title,
                style: AppStyles.t18h24w600.copyWith(
                  color: colorTitle ?? AppColors.primary051E56,
                ),
              ),
              // Icon(Icons.close),
              isDisplayClose
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Assets.svg.close.svg(),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        const Divider(
          height: 1,
          thickness: 0.5,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }
}
