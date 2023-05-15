import 'package:flutter/material.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_bts.dart';
import 'package:flutter_core/common/widgets/bottom_sheet/base_header_bts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_theme/app_colors.dart';
import '../../app_theme/app_styles.dart';

class BtsSort extends StatefulWidget {
  const BtsSort({Key? key}) : super(key: key);

  @override
  State<BtsSort> createState() => _BtsSortState();
}

class _BtsSortState extends State<BtsSort> {
  int _selectedOption = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedOption = value ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseBts(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BaseHeaderBts(
            isDisplayClose: false,
            title: 'Sort',
          ),
          ListTile(
            title: Text(
              'By modified date',
              style: AppStyles.t16h21w500.copyWith(
                color: AppColors.primary051E56,
              ),
            ),
            leading: Radio(
              value: 0,
              activeColor: AppColors.primary0DABAB,
              groupValue: _selectedOption,
              onChanged: (value) {
                _handleRadioValueChange(value);
                // widget.handleRadioValue(value);
              },
            ),
          ),
          cusDivider(),
          ListTile(
            title: Text(
              'By name A - Z',
              style: AppStyles.t16h21w500.copyWith(
                color: AppColors.primary051E56,
              ),
            ),
            leading: Radio(
              value: 1,
              activeColor: AppColors.primary0DABAB,
              groupValue: _selectedOption,
              onChanged: (value) {
                _handleRadioValueChange(value);
                // widget.handleRadioValue(value);
              },
            ),
          ),
          cusDivider(),
          ListTile(
            title: Text(
              'By name Z - A',
              style: AppStyles.t16h21w500.copyWith(
                color: AppColors.primary051E56,
              ),
            ),
            leading: Radio(
              value: 2,
              activeColor: AppColors.primary0DABAB,
              groupValue: _selectedOption,
              onChanged: (value) {
                _handleRadioValueChange(value);
                // widget.handleRadioValue(value);
              },
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }

  Widget cusDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
      child: const Divider(
        height: 1,
        thickness: 0.5,
      ),
    );
  }
}
