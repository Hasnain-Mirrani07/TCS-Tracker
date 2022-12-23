import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:timelines/timelines.dart';

import '../../home/controllers/home_controller.dart';

class ResultWidgetsClass {
  final resultContr = Get.find<HomeController>();

  Padding onTheWayStatus() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: TimelineTile(
        mainAxisExtent: 110,
        nodeAlign: TimelineNodeAlign.start,
        contents: Card(
          shadowColor: Colors.grey.shade500,
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.delivery_dining_sharp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  On The Way"),
                  Text(
                    "City: ${resultContr.userDetailModel.departCity}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                " ${resultContr.userDetailModel.departDateTime}",
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        node: const TimelineNode(
          indicator: DotIndicator(
            color: Colors.red,
          ),
          startConnector: SolidLineConnector(
            space: 10,
            color: Colors.redAccent,
          ),
          endConnector: SolidLineConnector(
            // space: 10,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }

  Padding arrivedStatus() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: TimelineTile(
        mainAxisExtent: 110,
        nodeAlign: TimelineNodeAlign.start,
        contents: Card(
          shadowColor: Colors.grey.shade500,
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.delivery_dining_sharp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " ${resultContr.userDetailModel.status}",
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "City: ${resultContr.userDetailModel.arrivedCity}",
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Received By: ${resultContr.userDetailModel.recievedBy}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                " ${resultContr.userDetailModel.arrivedDateTime}",
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        node: const TimelineNode(
          indicator: DotIndicator(
            color: Colors.red,
          ),
          startConnector: SolidLineConnector(
            space: 10,
            color: Colors.redAccent,
          ),
          endConnector: SolidLineConnector(
            // space: 10,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }

  Padding bookingStatus() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: TimelineTile(
        mainAxisExtent: 110,
        nodeAlign: TimelineNodeAlign.start,
        contents: Card(
          shadowColor: Colors.grey.shade500,
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.delivery_dining_sharp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  Booking Status"),
                  Text("City: ${resultContr.userDetailModel.origin}"),
                ],
              ),
              Text(
                " ${resultContr.userDetailModel.bookingDate}",
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        node: const TimelineNode(
          indicator: DotIndicator(
            color: Colors.red,
          ),
          // startConnector: SolidLineConnector(),
          startConnector: SolidLineConnector(
            space: 10,
            color: Colors.redAccent,
          ),
          endConnector: SolidLineConnector(
            //   space: 10,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }

////////fruther adition Detail.

  Padding dileveryStatus1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: TimelineTile(
        mainAxisExtent: 110,
        nodeAlign: TimelineNodeAlign.start,
        contents: Card(
          shadowColor: Colors.grey.shade500,
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.delivery_dining_sharp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  Further Detail"),
                  Text(
                    "Station: ${resultContr.userDetailModel.stationD}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                " ${resultContr.userDetailModel.dateTimeD}",
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        node: const TimelineNode(
          indicator: DotIndicator(
            color: Colors.red,
          ),
          startConnector: SolidLineConnector(
            space: 10,
            color: Colors.redAccent,
          ),
          endConnector: SolidLineConnector(
            // space: 10,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }

  Padding dileveryStatus2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: TimelineTile(
        mainAxisExtent: 110,
        nodeAlign: TimelineNodeAlign.start,
        contents: Card(
          shadowColor: Colors.grey.shade500,
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.delivery_dining_sharp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  Received By Detail"),
                  Text(
                    "Cons.No: ${resultContr.userDetailModel.consignmentNoD}",
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Cons.No: ${resultContr.userDetailModel.recievedByD}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                " ${resultContr.userDetailModel.dateTimeD}",
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        node: const TimelineNode(
          indicator: DotIndicator(
            color: Colors.red,
          ),
          startConnector: SolidLineConnector(
            space: 10,
            color: Colors.redAccent,
          ),
          endConnector: SolidLineConnector(
            // space: 10,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }

  Padding dileveryStatus3() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: TimelineTile(
        mainAxisExtent: 110,
        nodeAlign: TimelineNodeAlign.start,
        contents: Card(
          shadowColor: Colors.grey.shade500,
          color: Colors.grey.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.delivery_dining_sharp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("  Status  Detail"),
                  Text(
                    "Status: ${resultContr.userDetailModel.statusD}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                "Code  ${resultContr.userDetailModel.codeD}",
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        node: const TimelineNode(
          indicator: DotIndicator(
            color: Colors.red,
          ),
          startConnector: SolidLineConnector(
            space: 10,
            color: Colors.redAccent,
          ),
          endConnector: SolidLineConnector(
            // space: 10,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
