import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusButton extends StatelessWidget {
  const CusButton({Key? key, required this.title, required this.colorButton,}) : super(key: key);

  final String title;
  final Color colorButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color:colorButton,
      ),
      child: Text(
        title,
        style: AppStyles.t16h21w600.copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
