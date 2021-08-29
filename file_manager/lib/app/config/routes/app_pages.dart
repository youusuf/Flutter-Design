import 'package:file_manager/app/features/dashboard/cloud/views/screens/cloud_screen.dart';
import 'package:file_manager/app/features/dashboard/home/views/screens/home_screen.dart';
import 'package:file_manager/app/features/dashboard/index/views/screens/dashboard_screen.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened this page will be the first to be shown
  static const initial = Routes.cloud;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.cloud,
      page: () => CloudScreen(),
      binding: CloudBinding(),
    )
  ];
}
