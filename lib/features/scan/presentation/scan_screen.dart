import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/features/scan/presentation/pages/scan_feature.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_theme/app_colors.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary004848,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Position photo within frame',
              style: AppStyles.t15h20w600.copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 68.h,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(270 / 360),
                          child: Assets.svg.conner.svg(),
                        ),
                        Assets.svg.conner.svg(),
                      ],
                    ),
                    Assets.icon.document.image(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(180 / 360),
                          child: Assets.svg.conner.svg(),
                        ),
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(90 / 360),
                          child: Assets.svg.conner.svg(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 146.h,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  itemCustom(
                    'Import',
                    Assets.svg.imageAdd.svg(),
                  ),
                  SizedBox(
                    width: 39.w,
                  ),
                  itemCustom(
                    'Auto',
                    Assets.svg.auto.svg(),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScanFeature(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110.h,
                      height: 110.h,
                      padding: EdgeInsets.all(14.h),
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
                          BoxShadow(
                            color: AppColors.primaryd6cef5,
                            offset: Offset(2, 1),
                            blurRadius: 20,
                            spreadRadius: 7,
                          )
                        ]),
                        child: Assets.svg.scan.svg(
                          width: 20,
                          height: 20,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 23.w,
                  ),
                  itemCustom(
                    'Flash',
                    Assets.svg.flash.svg(),
                  ),
                  SizedBox(
                    width: 29.w,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 55.h,
                        width: 55.h,
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryFFCB5D,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary0DABAB,
                          ),
                          height: 22.h,
                          width: 22.h,
                          child: Text(
                            '3',
                            style: AppStyles.t15h20w600.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemCustom(String title, Widget iconSvg) {
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
