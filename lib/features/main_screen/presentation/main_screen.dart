import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_colors.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/common/widgets/custom_textfield_search.dart';
import 'package:flutter_core/common/widgets/search_add_sort_widget.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/custom_nav_drawer.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/no_document.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/scan_bottom.dart';
import 'package:flutter_core/features/main_screen/presentation/widget/with_document.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          },
        ),
        title: Text(
          'ProScanner',
          style: AppStyles.t24h28w600.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      drawer: const CustomNavDrawer(),
      body: Column(
        children: [
          const SearchAddSortWidget(),
          Expanded(
            child: WithDocument(),
          ),
          SizedBox(
            height: 130.h,
            width: double.infinity,
            child: const ScanBottom(),
          ),
        ],
      ),
    );
  }
}
