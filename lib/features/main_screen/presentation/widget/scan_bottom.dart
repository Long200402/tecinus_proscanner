import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class ScanBottom extends StatefulWidget {
  const ScanBottom({Key? key}) : super(key: key);

  @override
  State<ScanBottom> createState() => _ScanBottomState();
}

class _ScanBottomState extends State<ScanBottom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            decoration: const BoxDecoration(
              color: AppColors.primary0DABAB,
              shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary88c4c4,
                    offset: Offset(2, 1),
                    blurRadius: 10,
                    spreadRadius: 1
                  )
                ]
            ),
            child: Assets.svg.image.svg(
              width: 14,
              height: 14,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        InkWell(
          onTap: () {
            context.router.push(ScanScreenRoute());
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
              decoration: const BoxDecoration(
                color: AppColors.primary0DABAB,
                shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.primary88c4c4,
                        offset: Offset(2, 1),
                        blurRadius: 10,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: Assets.svg.scan.svg(
                width: 20,
                height: 20,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        SizedBox(
          width: 66.h,
          height: 66.h,
        ),
      ],
    );
  }
}
