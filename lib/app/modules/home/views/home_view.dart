import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tcs_tracker/app/routes/app_pages.dart';
import 'package:tcs_tracker/shared/widgets/cstm_text_field.dart';
import 'package:tcs_tracker/shared/widgets/custom_button.dart';
import 'package:tcs_tracker/utils/constants.dart';

import '../../../../utils/assets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String trackingNo = '';

  @override
  Widget build(BuildContext context) {
    final fValidator = MultiValidator([
      RequiredValidator(errorText: 'Please Enter the CN: No'),
      MaxLengthValidator(10, errorText: 'Please Enter 10 Digit of CN Number'),
      MinLengthValidator(10, errorText: 'Your CN: No less then 10'),
      // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'specialChar_err')
    ]);
    return Scaffold(
      // bottomSheet: bottomsheet,
      bottomSheet: Container(
        alignment: Alignment.center,
        child: AdWidget(ad: controller.myBanner),
        width: Get.width,
        height: controller.myBanner.size.height.toDouble(),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 80.h,
                        width: 150.w,
                        child: Image.asset(
                          logoImage,
                        )),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 2.h,
              indent: 20,
              endIndent: 20,
            ),

            // SizedBox(
            //   height: 10.h,
            // ),
            // Container(
            //   height: 120.h,
            //   width: Get.width,
            //   color: Colors.red,
            // ),
            Center(
              child: SizedBox(
                  height: 250.h,
                  width: 400.w,
                  child: Image.asset(
                    logoImage,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w, right: 40.w),
              child: CstmTextFieldTemplate(
                onChanged: (value) {
                  trackingNo = value;
                },
                validator: fValidator,
                hideText: false,
                hintText: hintText,
                isPassword: false,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
                //  constraints: BoxConstraints(minWidth: 150, maxWidth: 200),
                height: 50,
                width: 180.w,
                child: CustomButton(
                  title: "Track",
                  color: Colors.red,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.find<HomeController>().detail(trackingNo);
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }

  final String hintText = 'Enter Your Tracking ID';
}
