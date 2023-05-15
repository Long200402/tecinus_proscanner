import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 211.w,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
          ),
          errorBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
          ),
          filled: true,
          fillColor: AppColors.primaryF5F8FD,
          hintText: 'Search your files',
          hintStyle: AppStyles.t14h19w400.copyWith(
            color: AppColors.primaryB3BCCF,
          ),
          prefixIcon: Assets.svg.search.svg(
            width: 14,
            height: 14,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
