import 'package:flutter/material.dart';
import 'package:flutter_core/features/see_all/presentation/widgets/item_file.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../common/app_theme/app_colors.dart';
import '../../../../../../common/app_theme/app_styles.dart';

class FolderWithFile extends StatelessWidget {
  const FolderWithFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                'Personal',
                style: AppStyles.t18h24w600.copyWith(
                  color: AppColors.primary051E56,
                ),
              ),
              const SizedBox(),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 24.w),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ItemFile();
              },
            ),
          ),
        ),
      ],
    );
  }
}
