import 'package:flutter/material.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_move_folder.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_new_folder.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_option_file.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_option_folder.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/bts_sort.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import 'custom_textfield_search.dart';

class SearchAddSortWidget extends StatefulWidget {
  const SearchAddSortWidget({Key? key}) : super(key: key);

  @override
  State<SearchAddSortWidget> createState() => _SearchAddSortWidgetState();
}

class _SearchAddSortWidgetState extends State<SearchAddSortWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SizedBox(
              width: 24.w,
            ),
            const CustomTextFieldSearch(),
            SizedBox(
              width: 22.w,
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
                    return BtsNewFolder();
                  },
                );
              },
              child: SizedBox(
                width: 42.h,
                height: 42.h,
                child: Assets.svg.addFolder.svg(
                  width: 14,
                  height: 14,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
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
                    return BtsSort();
                  },
                );
              },
              child: SizedBox(
                width: 42.h,
                height: 42.h,
                child: Assets.svg.sort.svg(
                  width: 12,
                  height: 12,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
