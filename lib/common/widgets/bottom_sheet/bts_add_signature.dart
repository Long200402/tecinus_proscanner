import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_header_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/cus_button.dart';
import 'package:flutter_core/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../app_theme/app_styles.dart';

class BtsAddSignature extends StatelessWidget {
  const BtsAddSignature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseBts(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseHeaderBts(
            title: 'Add signature',
            isDisplayClose: true,
            colorTitle: AppColors.primary051E56,
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                     context.router.push(SignScreenRoute());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          cusConatiner(
                            Assets.svg.scanSignature.svg(),
                            AppColors.primaryE0FFFF,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            'Scan your signature',
                            style: AppStyles.t16h21w500.copyWith(
                              color: AppColors.primary051E56,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12,
                        color: Color(0xff9CA5BA),
                      ),
                    ],
                  ),
                ),
                cusDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        cusConatiner(
                          Assets.svg.imageSecond.svg(),
                          AppColors.primaryE0FFFF,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          'Import from picture',
                          style: AppStyles.t16h21w500.copyWith(
                            color: AppColors.primary051E56,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 12,
                      color: Color(0xff9CA5BA),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cusDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 15.h),
      child: const Divider(
        height: 1,
        thickness: 0.5,
      ),
    );
  }

  Container cusConatiner(Widget icon, Color colorBg) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: 28.h,
      width: 28.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: colorBg),
      child: icon,
    );
  }
}
