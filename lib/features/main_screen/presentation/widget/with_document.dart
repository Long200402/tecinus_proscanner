import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/recent_scans.dart';
import 'package:flutter_core/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_item_folder.dart';

class WithDocument extends StatefulWidget {
  const  WithDocument({Key? key}) : super(key: key);

  @override
  State<WithDocument> createState() => _WithDocumentState();
}

class _WithDocumentState extends State<WithDocument> {
  final lsFolder = [
    'Personal',
    'Official',
    'Official',
    'Official',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 34.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Scans',
                style: AppStyles.t18h24w600.copyWith(
                  color: AppColors.primary051E56,
                ),
              ),
              InkWell(
                onTap: () {
                  context.router.push(SeeAllScreenRoute());
                },
                child: Row(
                  children: [
                    Text(
                      'See All',
                      style: AppStyles.t14h19w500.copyWith(
                        color: AppColors.primary0DABAB,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.h, left: 11.w),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12,
                        color: AppColors.primary0DABAB,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          height: 161.h,
          width: double.infinity,
          child: ListView.builder(
            itemCount: lsFolder.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomItemFolder(
                title: lsFolder[index],
                countItem: '32',
              );
            },
          ),
        ),
        SizedBox(
          height: 34.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent scans',
                style: AppStyles.t18h24w600.copyWith(
                  color: AppColors.primary051E56,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              RecentScans(),
              SizedBox(
                height: 21.h,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: AppColors.primaryEEF2F9,
              ),
              SizedBox(
                height: 14.h,
              ),
              RecentScans(),
            ],
          ),
        )
      ],
    );
  }
}
