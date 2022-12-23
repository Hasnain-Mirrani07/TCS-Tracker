import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:http/http.dart' as http;
import 'package:tcs_tracker/app/Models/userDetailModel.dart';
import 'package:tcs_tracker/shared/widgets/custome_snackbar.dart';
import 'package:tcs_tracker/utils/colors.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  late UserDetailModel userDetailModel = userDetailModel;
  bool isVisible = true;
  void visibileFu() {
    isVisible = !isVisible;
    // update();
  }

  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-1984239636234498/9947655244',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(
      onAdClicked: (ad) {
        print('You have called::::');
      },
    ),
  );

  @override
  void onInit() {
    myBanner.load();
    super.onInit();
  }

  Future<void> detail(String trackingNo) async {
    //  var cn = 2367188037;
    // var fromDate = 20221213;
    // var toDate = 20221215;
    try {
      var headers = {
        'Accept': 'application/json',
        'X-IBM-Client-Id': '96fd0166-9bfa-4ec7-aad4-71b8920adcc2'
      };
      var request = await http.Request(
          'GET',
          Uri.parse(
              'https://api.tcscourier.com/production/track/v1/shipments/detail?consignmentNo=$trackingNo'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(" Status code=> ${response.statusCode}");
        var rawData = await response.stream.bytesToString();
        var extractedData = jsonDecode(rawData);
        print("${extractedData}");
        if (trackingNo ==
            extractedData['TrackDetailReply']['TrackInfo'][0]
                ['consignmentNo']) {
          print(
              "if condition ticket NO=>$trackingNo  = ${extractedData['TrackDetailReply']['TrackInfo'][0]['consignmentNo']} = ${extractedData['TrackDetailReply']['TrackInfo'][0]['shipper']}");

          userDetailModel = UserDetailModel(
            consignmentNo: extractedData['TrackDetailReply']['TrackInfo'][0]
                ['consignmentNo'],
            name: extractedData['TrackDetailReply']['TrackInfo'][0]['shipper'],
            consignee: extractedData['TrackDetailReply']['TrackInfo'][0]
                ['shipper'],
            bookingDate: extractedData['TrackDetailReply']['TrackInfo'][0]
                ['bookingDate'],
            origin: extractedData['TrackDetailReply']['TrackInfo'][0]['origin'],
            originCountry: extractedData['TrackDetailReply']['TrackInfo'][0]
                ['originCountry'],
            destination: extractedData['TrackDetailReply']['TrackInfo'][0]
                ['destination'],
            destinationCountry: extractedData['TrackDetailReply']['TrackInfo']
                [0]['destinationCountry'],
            recievedBy: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['recievedBy'],
            code: extractedData['TrackDetailReply']['Checkpoints'][0]
                ['dateTime'],
            dateTime: extractedData['TrackDetailReply']['Checkpoints'][0]
                ['dateTime'],
            station: extractedData['TrackDetailReply']['Checkpoints'][0]
                ['dateTime'],
            status: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['status'],
            arrivedStatus: extractedData['TrackDetailReply']['Checkpoints'][0]
                ['status'],
            arrivedCity: extractedData['TrackDetailReply']['Checkpoints'][0]
                ['recievedBy'],
            arrivedDateTime: extractedData['TrackDetailReply']['Checkpoints'][0]
                ['dateTime'],
            departStatus: extractedData['TrackDetailReply']['Checkpoints'][1]
                ['status'],
            departCity: extractedData['TrackDetailReply']['Checkpoints'][1]
                ['recievedBy'],
            departDateTime: extractedData['TrackDetailReply']['Checkpoints'][1]
                ['dateTime'],
            consignmentNoD: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['consignmentNo'],
            dateTimeD: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['dateTime'],
            stationD: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['station'],
            recievedByD: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['recievedBy'],
            statusD: extractedData['TrackDetailReply']['DeliveryInfo'][0]
                ['status'],
            codeD: extractedData['TrackDetailReply']['DeliveryInfo'][0]['code'],
          );
          Get.toNamed(Routes.RESULT);
        } else {
          customSnackbar("Sorry:", "Wrong Ref No:");
        }
        //  print(await response.stream.bytesToString());
      } else {
        customSnackbar("Server Error", "Server Problem ");
      }
    } catch (e) {
      customSnackbar("Sorry:", "Server Down Eror 404");
    }
  }
  //TODO: Implement HomeController

  final count = 0.obs;

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
