import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/dialog_remove_ads.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';

class CustomNavDrawer extends StatefulWidget {
  const CustomNavDrawer({Key? key}) : super(key: key);

  @override
  State<CustomNavDrawer> createState() => _CustomNavDrawerState();
}

class _CustomNavDrawerState extends State<CustomNavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 36.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'ProScanner',
              style: AppStyles.t24h28w600.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const DialogRemoveAds();
                  },
                );
              },
              child: Row(
                children: [
                  customContainer(
                    Assets.svg.ban.svg(),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Remove ads',
                    style: AppStyles.t16h21w500.copyWith(
                      color: AppColors.primary051E56,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.primaryEEF2F9,
            ),
            SizedBox(
              height: 14.h,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  customContainer(
                    Assets.svg.pen.svg(),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Signature',
                    style: AppStyles.t16h21w500.copyWith(
                      color: AppColors.primary051E56,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.primaryEEF2F9,
            ),
            SizedBox(
              height: 14.h,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  customContainer(
                    Assets.svg.rate.svg(),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Rate us',
                    style: AppStyles.t16h21w500.copyWith(
                      color: AppColors.primary051E56,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.primaryEEF2F9,
            ),
          ],
        ),
      ),
    ));
  }

  Container customContainer(Widget icon) {
    return Container(
      width: 28.w,
      height: 28.w,
      decoration: BoxDecoration(
        color: AppColors.primaryE0FFFF,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: icon,
    );
  }
}
