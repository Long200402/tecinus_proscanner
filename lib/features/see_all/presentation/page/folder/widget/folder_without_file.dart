import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../common/app_theme/app_colors.dart';
import '../../../../../../common/app_theme/app_styles.dart';
import '../../../../../../gen/assets.gen.dart';

class FolderWithoutFile extends StatelessWidget {
  const FolderWithoutFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 127.h,
        ),
        Assets.svg.emptyFolder.svg(),
        Text(
          'Empty folder',
          style: AppStyles.t18h24w700.copyWith(
            color: AppColors.primary051E56,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Move documents to this folder',
          style: AppStyles.t18h24w400.copyWith(
              color: AppColors.primary051E56
          ),
        )
      ],
    );
  }
}
