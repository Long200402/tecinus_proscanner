import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';

class CusTextField extends StatelessWidget {
  const CusTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2, color: AppColors.primary0DABAB,
          )
        ),
        hintText: 'Enter name folder'
      ),
    );
  }
}
