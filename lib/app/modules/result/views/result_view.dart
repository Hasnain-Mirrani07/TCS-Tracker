import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tcs_tracker/app/modules/home/controllers/home_controller.dart';
import 'package:tcs_tracker/app/modules/result/views/result_widgets.dart';
import 'package:tcs_tracker/utils/constants.dart';
import 'package:timelines/timelines.dart';

import '../../../../utils/assets.dart';
import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  ResultView({Key? key}) : super(key: key);
  // HomeController homeC = HomeController();

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    final resultContr = Get.find<HomeController>();
    // controller.onInit();

    return Scaffold(
        // resizeToAvoidBottomInset: true,
        // bottomSheet: bottomsheet,
        bottomSheet: Container(
          alignment: Alignment.center,
          child: AdWidget(ad: controller.myBanner),
          width: Get.width,
          height: controller.myBanner.size.height.toDouble(),
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 80.h, horizontal: 30.w),
                  child: Wrap(direction: Axis.horizontal,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            height: 50.h,
                            width: 80.w,
                            child: Image.asset(
                              logoImage,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Shiper Name: ${resultContr.userDetailModel.name}"),
                            Text(
                                "Consingee: ${resultContr.userDetailModel.consignee}"),
                            Text(
                                "Origin: ${resultContr.userDetailModel.origin}"),
                            Text(
                                "Origin Country: ${resultContr.userDetailModel.originCountry}"),
                            Text(
                                "Booking Date: ${resultContr.userDetailModel.bookingDate}"),
                            Text(
                                "Destination: ${resultContr.userDetailModel.destination}"),
                            Text(
                                "Country: ${resultContr.userDetailModel.destinationCountry}"),
                            Text(
                                "Arrived Date: ${resultContr.userDetailModel.arrivedDateTime}"),
                            Text(
                                "Status: ${resultContr.userDetailModel.status}"),
                          ],
                        ),
                        // SizedBox(
                        //   height: 20.h,
                        // )
                      ]),
                  height: Get.height * .37,
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.8),
                        spreadRadius: 10,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    // color: Colors.red,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFDFCFB),
                        Colors.grey.shade100,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: AdWidget(ad: controller.myBanner1),
                  width: Get.width,
                  height: controller.myBanner.size.height.toDouble(),
                ),
                SizedBox(height: 10.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flex(
                      direction: Axis.vertical,
                      children: [
                        ResultWidgetsClass().bookingStatus(),
                        Container(
                          alignment: Alignment.center,
                          child: AdWidget(ad: controller.myBanner2),
                          width: Get.width,
                          height: controller.myBanner.size.height.toDouble(),
                        ),
                        ResultWidgetsClass().onTheWayStatus(),
                        Container(
                          alignment: Alignment.center,
                          child: AdWidget(ad: controller.myBanner3),
                          width: Get.width,
                          height: controller.myBanner.size.height.toDouble(),
                        ),
                        ResultWidgetsClass().arrivedStatus(),
                        ResultWidgetsClass().dileveryStatus1(),
                        ResultWidgetsClass().dileveryStatus2(),
                        ResultWidgetsClass().dileveryStatus3(),
                        ResultWidgetsClass().bookingStatus(),
                        ResultWidgetsClass().onTheWayStatus(),
                        ResultWidgetsClass().arrivedStatus(),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              top: 25,
              left: 30,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  color: Colors.red,
                  iconSize: 25,
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
