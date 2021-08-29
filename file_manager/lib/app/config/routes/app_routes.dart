part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const dashboard = _Paths.dashboard;
  static const home = _Paths.home;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  // Example :
  // static const index = '/';
  // static const splash = '/splash';
  // static const product = '/product';
  // static const productEdit = '/product/edit';
  // static const productDetail = '/product/detail';
  // static const productAdd = '/product/add';
  //

  static const dashboard = '/dashboard';
  static const home = '/home';
}
