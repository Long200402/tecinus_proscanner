import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_header_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/cus_button.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/cus_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtsNewFolder extends StatefulWidget {
  const BtsNewFolder({Key? key}) : super(key: key);

  @override
  State<BtsNewFolder> createState() => _BtsNewFolderState();
}

class _BtsNewFolderState extends State<BtsNewFolder> {
  @override
  Widget build(BuildContext context) {
    return BaseBts(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BaseHeaderBts(
            title: 'New Folder',
            isDisplayClose: true,
          ),
          SizedBox(
            height: 23.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Folder name',
                  style: AppStyles.t14h19w600.copyWith(
                    color: Colors.black,
                  ),
                ),
                CusTextField(),
                SizedBox(
                  height: 24.h,
                ),
                CusButton(
                  title: 'Create',
                  colorButton: AppColors.primary0DABAB,
                ),
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
