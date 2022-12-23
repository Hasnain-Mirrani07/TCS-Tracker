import 'dart:async';

import 'package:get/get.dart';
import 'package:tcs_tracker/app/modules/login/views/login_view.dart';
import 'package:tcs_tracker/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  var count = 0.obs;
  void addNum() {
    count++;
  }

  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(seconds: 3),
      () {
        Get.toNamed(Routes.HOME);
      },
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
