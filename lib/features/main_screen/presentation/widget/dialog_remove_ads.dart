import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class DialogRemoveAds extends StatefulWidget {
  const DialogRemoveAds({Key? key}) : super(key: key);

  @override
  State<DialogRemoveAds> createState() => _DialogRemoveAdsState();
}

class _DialogRemoveAdsState extends State<DialogRemoveAds> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icon.upgradeCut.image(),
          Text(
            'Enjoy ProScanner',
            style: AppStyles.t18h24w600.copyWith(
              color: AppColors.primary051E56,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'without ads',
            style: AppStyles.t18h24w600.copyWith(
              color: AppColors.primary051E56,
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          customButton('Remove Ads'),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {

            },
            child: Text(
              'Maybe later',
              style: AppStyles.t16h21w500.copyWith(
                color: AppColors.primary0DAAAA,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }

  Container customButton(String content){
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.primary0DAAAA,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        content,
        style: AppStyles.t16h21w500.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
