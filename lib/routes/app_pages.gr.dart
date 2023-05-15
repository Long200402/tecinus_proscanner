// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_pages.dart';

class _$AppPages extends RootStackRouter {
  _$AppPages([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    SeeAllScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SeeAllScreen(),
      );
    },
    FolderFileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FolderFile(),
      );
    },
    ScanScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ScanScreen(),
      );
    },
    SignScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          MainScreenRoute.name,
          path: '/main_screen',
        ),
        RouteConfig(
          SeeAllScreenRoute.name,
          path: '/see_all',
        ),
        RouteConfig(
          FolderFileRoute.name,
          path: '/folder_file',
        ),
        RouteConfig(
          ScanScreenRoute.name,
          path: '/scan',
        ),
        RouteConfig(
          SignScreenRoute.name,
          path: '/sign',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [MainScreen]
class MainScreenRoute extends PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main_screen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [SeeAllScreen]
class SeeAllScreenRoute extends PageRouteInfo<void> {
  const SeeAllScreenRoute()
      : super(
          SeeAllScreenRoute.name,
          path: '/see_all',
        );

  static const String name = 'SeeAllScreenRoute';
}

/// generated route for
/// [FolderFile]
class FolderFileRoute extends PageRouteInfo<void> {
  const FolderFileRoute()
      : super(
          FolderFileRoute.name,
          path: '/folder_file',
        );

  static const String name = 'FolderFileRoute';
}

/// generated route for
/// [ScanScreen]
class ScanScreenRoute extends PageRouteInfo<void> {
  const ScanScreenRoute()
      : super(
          ScanScreenRoute.name,
          path: '/scan',
        );

  static const String name = 'ScanScreenRoute';
}

/// generated route for
/// [SignScreen]
class SignScreenRoute extends PageRouteInfo<void> {
  const SignScreenRoute()
      : super(
          SignScreenRoute.name,
          path: '/sign',
        );

  static const String name = 'SignScreenRoute';
}
