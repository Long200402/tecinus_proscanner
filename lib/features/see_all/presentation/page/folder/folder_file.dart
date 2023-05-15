
import 'package:flutter/material.dart';
import 'package:flutter_core/features/see_all/presentation/page/folder/widget/folder_with_file.dart';
import 'package:flutter_core/features/see_all/presentation/page/folder/widget/folder_without_file.dart';

import '../../../../../common/app_theme/app_styles.dart';
import '../../../../../common/widgets/search_add_sort_widget.dart';
import '../../../../main_screen/presentation/widget/custom_nav_drawer.dart';

class FolderFile extends StatelessWidget {
  const FolderFile({Key? key}) : super(key: key);

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
            // child: FolderWithFile(),
            child: FolderWithoutFile(),
          ),
        ],
      ),
    );
  }
}
