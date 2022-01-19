import 'package:get/get.dart';

import '../modules/animate/bindings/animate_binding.dart';
import '../modules/animate/views/animate_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ANIMATE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATE,
      page: () => AnimateView(),
      binding: AnimateBinding(),
    ),
  ];
}
