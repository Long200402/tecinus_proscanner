import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/features/home/presentation/home_page.dart';
import 'package:flutter_core/features/main_screen/presentation/main_screen.dart';
import 'package:flutter_core/features/movie_detail/presentation/movie_detail.dart';
import 'package:flutter_core/features/scan/presentation/scan_screen.dart';
import 'package:flutter_core/features/see_all/presentation/see_all_screen.dart';
import 'package:flutter_core/features/sign/presentaion/sign_screen.dart';
import 'package:flutter_core/routes/app_routes.dart';
import 'package:injectable/injectable.dart';
import '../features/core/presentation/core_page.dart';
import '../features/see_all/presentation/page/folder/folder_file.dart';
import '../features/splash/presentation/splash_screen.dart';

part 'app_pages.gr.dart';

@singleton
@MaterialAutoRouter(routes: [
  AutoRoute(path: AppRoutes.splash, page: SplashScreen, initial: true),
  AutoRoute(path: AppRoutes.main_screen, page: MainScreen),
  AutoRoute(path: AppRoutes.see_all, page: SeeAllScreen),
  AutoRoute(path: AppRoutes.folder_file, page: FolderFile),
  AutoRoute(path: AppRoutes.scan, page: ScanScreen),
  AutoRoute(path: AppRoutes.sign, page: SignScreen),
])
class AppPages extends _$AppPages {}
