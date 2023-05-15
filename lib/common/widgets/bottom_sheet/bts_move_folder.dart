import 'package:flutter/material.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_bts.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme/app_colors.dart';
import '../../app_theme/app_styles.dart';
import 'base_header_bts.dart';
import 'cus_button.dart';
import 'cus_text_field.dart';

class BtsMoveFolder extends StatelessWidget {
  const BtsMoveFolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseBts(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BaseHeaderBts(
            title: 'Rename',
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
                  'New name',
                  style: AppStyles.t14h19w600.copyWith(
                    color: Colors.black,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: AppColors.primary0DABAB,
                        ),
                      ),
                      suffixIcon: Assets.svg.arrowDown.svg(
                        width: 16,
                        height: 8,
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: 'Enter name folder'),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CusButton(
                  title: 'Move',
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
