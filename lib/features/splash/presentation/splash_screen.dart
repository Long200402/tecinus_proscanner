import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/common/app_theme/app_styles.dart';
import 'package:flutter_core/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000)).then(
      (value) => context.router.push(
        const MainScreenRoute(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.svg.scanner.svg(),
            SizedBox(
              height: 9.h,
            ),
            Text(
              'ProScanner',
              style: AppStyles.t36h43w600.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(
              'The best PDF scanner for Android',
              style: AppStyles.t18h21w250,
            ),
          ],
        ),
      ),
    );
  }
}
