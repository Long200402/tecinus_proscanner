import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_rename_folder.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme/app_styles.dart';

class BtsOptionFolder extends StatelessWidget {
  const BtsOptionFolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseBts(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 28.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(26),
                  height: 94.h,
                  width: 94.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.primaryFFF5DD,
                  ),
                  child: Assets.icon.folder.image(),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        'Address proof',
                        style: AppStyles.t14h19w500.copyWith(
                          color: AppColors.primary051E56,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        '32 items',
                        style: AppStyles.t12h16w400.copyWith(
                          color: AppColors.primary9CA5BA,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        '12/01/2021 12:21 PM',
                        style: AppStyles.t12h16w400.copyWith(
                          color: AppColors.primary9CA5BA,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.w,
                  child: Assets.svg.close.svg(),
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.5,
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            topLeft: Radius.circular(24),
                          )),
                      context: context,
                      builder: (context) {
                        return BtsRenameFolder();
                      },
                    );
                  },
                  child: Row(
                    children: [
                      cusConatiner(
                        Assets.svg.rename.svg(),
                        AppColors.primaryE0FFFF,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text(
                        'Rename',
                        style: AppStyles.t16h21w500.copyWith(
                          color: AppColors.primary051E56,
                        ),
                      )
                    ],
                  ),
                ),
                cusDivider(),
                Row(
                  children: [
                    cusConatiner(
                      Assets.svg.remove.svg(),
                      AppColors.primaryFFE0E0,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      'Delete',
                      style: AppStyles.t16h21w500.copyWith(
                        color: AppColors.primary051E56,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
        ],
      ),
    );
  }

  Widget cusDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
      child: const Divider(
        height: 1,
        thickness: 0.5,
      ),
    );
  }

  Container cusConatiner(Widget icon, Color colorBg) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: 28.h,
      width: 28.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: colorBg),
      child: icon,
    );
  }
}
