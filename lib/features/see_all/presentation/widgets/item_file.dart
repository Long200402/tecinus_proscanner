import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/index.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_option_file.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemFile extends StatelessWidget {
  const ItemFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 14.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Assets.icon.itemImg.image(),
            ),
            SizedBox(
              width: 12.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address proof',
                      style: AppStyles.t14h19w500.copyWith(
                        color: AppColors.primary051E56,
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
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
                            return BtsOptionFile();
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(4),
                        height: 20.h,
                        width: 20.w,
                        child: Assets.svg.dot.svg(),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  '12/01/2021 • 12:21 PM',
                  style: AppStyles.t12h16w400.copyWith(
                    color: AppColors.primary9CA5BA,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 11.h,
        ),
        const Divider(
          height: 1,
          thickness: 1,
        )
      ],
    );
  }
}
