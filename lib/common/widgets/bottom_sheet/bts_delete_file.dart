import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_header_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/cus_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../app_theme/app_styles.dart';

class BtsDeleteFile extends StatelessWidget {
  const BtsDeleteFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseBts(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseHeaderBts(
            title: 'Delete',
            isDisplayClose: true,
            colorTitle: AppColors.primaryF12020,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Assets.icon.itemImg.image(),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Address proof',
                      style: AppStyles.t14h19w500.copyWith(
                        color: AppColors.primary051E56,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      '12/01/2021 12:21 PM',
                      style: AppStyles.t12h16w400.copyWith(
                        color: AppColors.primary9CA5BA,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'Are you sure you want to delete this file ?',
                  style: AppStyles.t16h21w600.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                CusButton(
                  title: 'Yes, Delete',
                  colorButton: AppColors.primaryF12020,
                ),
                SizedBox(
                  height: 60.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
