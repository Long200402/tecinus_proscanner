import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_add_signature.dart';
import 'package:flutter_core/features/scan/presentation/pages/crop_feature.dart';
import 'package:flutter_core/features/scan/presentation/pages/reorder_feature.dart';
import 'package:flutter_core/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_theme/app_colors.dart';

class ItemFeature{
  String title;
  Widget icon;

  ItemFeature(this.title, this.icon);

}
class ScanFeature extends StatefulWidget {
  const ScanFeature({Key? key}) : super(key: key);

  @override
  State<ScanFeature> createState() => _ScanFeatureState();
}

class _ScanFeatureState extends State<ScanFeature> {

  final List<ItemFeature> listFT = [
    ItemFeature('Crop', Assets.svg.cropFt.svg()),
    ItemFeature('Sign', Assets.svg.pen.svg()),
    ItemFeature('Reorder', Assets.svg.reorder.svg()),
    ItemFeature('Add page', Assets.svg.addPage.svg()),
    ItemFeature('Rotate', Assets.svg.rotate.svg()),
    ItemFeature('Color', Assets.svg.color.svg()),
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
                        'File name',
                        style: AppStyles.t18h24w600.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Save PDF',
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
            Assets.icon.document.image(),
            SizedBox(
              height: 90.h,
            ),
            Expanded(
              child: Text(
                'Page 1 of 5',
                style: AppStyles.t15h20w600.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 106.h,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listFT.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if(listFT[index].title == 'Crop'){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CropFeature(),
                          ),
                        );
                      }else if(listFT[index].title == 'Reorder'){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReorderFeature(),
                          ),
                        );
                      }else if(listFT[index].title == 'Sign'){
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              )),
                          context: context,
                          builder: (context) {
                            return BtsAddSignature();
                          },
                        );
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        listFT[index].icon,
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          listFT[index].title,
                          style: AppStyles.t10h14w600.copyWith(
                            color: AppColors.primary0DABAB,
                          ),
                        ),
                        SizedBox(
                          width: 57.w,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
