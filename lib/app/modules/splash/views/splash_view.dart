import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tcs_tracker/app/modules/login/views/login_view.dart';
import 'package:tcs_tracker/utils/constants.dart';

import '../../../../utils/assets.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>().onInit();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      bottomSheet: bottomsheet,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            "assets/images/tcs_logo.png",
            height: Get.height * .8,
            width: Get.width,
          ))
        ],
      ),
    );
  }
}
