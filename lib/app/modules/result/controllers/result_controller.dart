import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:store_redirect/store_redirect.dart';

class ResultController extends GetxController {
  //TODO: Implement ResultController

  final BannerAd myBanner = BannerAd(
    adUnitId: 'ca-app-pub-1984239636234498/2440345092',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(
      onAdClicked: (ad) {
        print('You have called::::');
      },
    ),
  );

  final BannerAd myBanner1 = BannerAd(
    adUnitId: 'ca-app-pub-1984239636234498/3332762541',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );

  final BannerAd myBanner2 = BannerAd(
    adUnitId: 'ca-app-pub-1984239636234498/7704280062',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );
  final BannerAd myBanner3 = BannerAd(
    adUnitId: 'ca-app-pub-1984239636234498/1753545466',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );

  @override
  void onInit() {
    myBanner.load();
    myBanner1.load();
    myBanner2.load();
    myBanner3.load();
    Timer(
      Duration(seconds: 2),
      () => Get.defaultDialog(
          title: "Feedback",
          content: RatingBar(
            minRating: 1,
            maxRating: 5,
            initialRating: 3,
            allowHalfRating: true,
            updateOnDrag: true,
            ratingWidget: RatingWidget(
              full: GestureDetector(
                onTap: () {
                  StoreRedirect.redirect(
                      androidAppId: "com.confiatech.mygift",
                      iOSAppId: "585027354");
                },
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              half: Icon(
                Icons.star_border,
                color: Colors.grey,
              ),
              empty: GestureDetector(
                onTap: () {
                  StoreRedirect.redirect(
                      androidAppId: "com.confiatech.mygift",
                      iOSAppId: "585027354");
                },
                child: Icon(
                  Icons.star_border,
                  color: Colors.grey,
                ),
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
