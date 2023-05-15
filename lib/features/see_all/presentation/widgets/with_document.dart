import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_option_folder.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/recent_scans.dart';
import 'package:flutter_core/features/see_all/presentation/widgets/item_file.dart';
import 'package:flutter_core/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_item_folder.dart';

class WithDocument extends StatefulWidget {
  const WithDocument({Key? key}) : super(key: key);

  @override
  State<WithDocument> createState() => _WithDocumentState();
}

class _WithDocumentState extends State<WithDocument> {
  final lsFolder = [
    'Personal',
    'Official',
    'Official',
    'Official',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 34.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Folder',
                style: AppStyles.t18h24w600.copyWith(
                  color: AppColors.primary051E56,
                ),
              ),
              const SizedBox(),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          height: 161.h,
          width: double.infinity,
          child: ListView.builder(
            itemCount: lsFolder.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  context.router.push(FolderFileRoute());
                },
                onLongPress: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24),
                        )),
                    context: context,
                    builder: (context) {
                      return BtsOptionFolder();
                    },
                  );
                },
                child: CustomItemFolder(
                  title: lsFolder[index],
                  countItem: '32',
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 34.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'File',
                  style: AppStyles.t18h24w600.copyWith(
                    color: AppColors.primary051E56,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Expanded(
                  // height: 400.h,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ItemFile();
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
