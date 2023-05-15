import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/index.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentScans extends StatelessWidget {
  const RecentScans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Assets.icon.itemImg.image(),
            ),
            SizedBox(
              width: 12.w,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address proof',
                      style: AppStyles.t14h19w500.copyWith(
                        color: AppColors.primary051E56,
                      ),
                    ),
                    SizedBox(
                      width: 170.w,
                    ),
                    Assets.svg.dot.svg(),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  '12/01/2021 • 12:21 PM',
                  style: AppStyles.t12h16w400.copyWith(
                    color: AppColors.primary9CA5BA,
                  ),
                ),
              ],
            )
          ],
        ),
        // Row(
        //   children: [
        //     SizedBox(
        //       width: 64.w,
        //     ),
        //     Assets.svg.print.svg(),
        //     SizedBox(
        //       width: 5.w,
        //     ),
        //     Text(
        //       'Print',
        //       style: AppStyles.t12h16w600.copyWith(
        //         color: AppColors.primary0DABAB,
        //       ),
        //     ),
        //     SizedBox(
        //       width: 18.w,
        //     ),
        //     Assets.svg.share.svg(),
        //     SizedBox(
        //       width: 5.w,
        //     ),
        //     Text(
        //       'Share',
        //       style: AppStyles.t12h16w600.copyWith(
        //         color: AppColors.primary0DABAB,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}