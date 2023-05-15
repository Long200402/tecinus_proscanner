import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/features/scan/presentation/widgets/item_custom.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_theme/app_colors.dart';

class ItemFeature{
  String title;
  Widget icon;

  ItemFeature(this.title, this.icon);

}
class CropFeature extends StatefulWidget {
  const CropFeature({Key? key}) : super(key: key);

  @override
  State<CropFeature> createState() => _CropFeatureState();
}

class _CropFeatureState extends State<CropFeature> {

  final List<ItemFeature> listFT = [
    ItemFeature('Crop', Assets.svg.cropFt.svg()),
    ItemFeature('Sign', Assets.svg.pen.svg()),
    ItemFeature('Reorder', Assets.svg.reorder.svg()),
    ItemFeature('Add page', Assets.svg.addPage.svg()),
    ItemFeature('Rotate', Assets.svg.rotate.svg()),
    ItemFeature('Retake', Assets.svg.retake.svg()),
    ItemFeature('Delete', Assets.svg.delete.svg()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary004848,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Assets.svg.arrowLeft.svg(),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        'Crop',
                        style: AppStyles.t18h24w600.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Done',
                    style: AppStyles.t18h24w600.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 71.h,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Assets.icon.document.image(),
                Assets.svg.crop.svg(),
              ],
            ),
            SizedBox(
              height: 90.h,
            ),
            Expanded(
              child: Text(
                '',
                style: AppStyles.t15h20w600.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 106.h,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemCustom(iconSvg: Assets.svg.rotate.svg(), title: 'Rotate'),
                  ItemCustom(iconSvg: Assets.svg.retake.svg(), title: 'Retake'),
                  ItemCustom(iconSvg: Assets.svg.delete.svg(), title: 'Delete'),
                  Container(
                    width: 66.h,
                    height: 66.h,
                    padding: EdgeInsets.all(9.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primaryEEF2F9,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColors.primary0DABAB,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.primaryd6cef5,
                                offset: Offset(2, 1),
                                blurRadius: 10,
                                spreadRadius: 1
                            )
                          ]
                      ),
                      child: Assets.svg.mark.svg(
                        width: 14,
                        height: 14,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
