import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/features/scan/presentation/widgets/item_custom.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_theme/app_colors.dart';

class ScanSignature extends StatefulWidget {
  const ScanSignature({Key? key}) : super(key: key);

  @override
  State<ScanSignature> createState() => _ScanSignatureState();
}

class _ScanSignatureState extends State<ScanSignature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary004848,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Assets.svg.arrowLeft.svg(),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        'Add signature',
                        style: AppStyles.t18h24w600.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Done',
                    style: AppStyles.t18h24w600.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 157.h,
            ),
            Assets.icon.signature.image(),
            SizedBox(
              height: 120.h,
            ),
            Expanded(
              child: Text(
                '',
                style: AppStyles.t15h20w600.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              height: 106.h,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: 66.h,
                    height: 66.h,
                    padding: EdgeInsets.all(9.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primaryEEF2F9,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      decoration:
                          const BoxDecoration(color: AppColors.primary0DABAB, shape: BoxShape.circle, boxShadow: [
                        BoxShadow(color: AppColors.primaryd6cef5, offset: Offset(2, 1), blurRadius: 10, spreadRadius: 1)
                      ]),
                      child: Assets.svg.mark.svg(
                        width: 14,
                        height: 14,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
