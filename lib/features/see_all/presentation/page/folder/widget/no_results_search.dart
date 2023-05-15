import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../common/app_theme/app_colors.dart';
import '../../../../../../common/app_theme/app_styles.dart';
import '../../../../../../gen/assets.gen.dart';

class NoResultSearch extends StatelessWidget {
  const NoResultSearch({Key? key}) : super(key: key);

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
          'No results found',
          style: AppStyles.t18h24w700.copyWith(
            color: AppColors.primary051E56,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          '''Try adjusting your search
            to find what you are looking for''',
          style: AppStyles.t18h24w400.copyWith(
            color: AppColors.primary051E56,
          ),
        )
      ],
    );
  }
}
