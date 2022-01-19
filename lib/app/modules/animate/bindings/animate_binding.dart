import 'package:get/get.dart';

import '../controllers/animate_controller.dart';

class AnimateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimateController>(
      () => AnimateController(),
    );
  }
}
