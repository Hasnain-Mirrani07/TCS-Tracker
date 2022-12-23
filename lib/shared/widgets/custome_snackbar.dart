import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:tcs_tracker/utils/colors.dart';

customSnackbar(
  String title,
  String message,
) {
  Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      // backgroundColor: whiteColor,
      colorText: red3Color,
      margin: const EdgeInsets.only(bottom: 40),
      backgroundGradient: const LinearGradient(colors: [
        Colors.black87,
        Colors.redAccent,
      ]),
      maxWidth: 350,
      leftBarIndicatorColor: Colors.red,
      overlayBlur: 5);
}
