import 'package:get/get.dart';

class UserDetailModel {
  final String consignmentNo;

  final String name;
  final String bookingDate;
  final String origin;
  final String originCountry;
  final String destination;
  final String destinationCountry;
  final String consignee;
  final String station;
  final String dateTime;
  final String recievedBy;
  final String status;
  final String code;

  final String arrivedStatus;
  final String arrivedCity;
  final String arrivedDateTime;
  final String departStatus;
  final String departCity;
  final String departDateTime;
  final String consignmentNoD;
  final String stationD;
  final String dateTimeD;
  final String recievedByD;
  final String statusD;
  final String codeD;

  UserDetailModel({
    required this.codeD,
    required this.statusD,
    required this.recievedByD,
    required this.stationD,
    required this.dateTimeD,
    required this.consignmentNoD,
    required this.departStatus,
    required this.departCity,
    required this.departDateTime,
    required this.arrivedStatus,
    required this.arrivedCity,
    required this.arrivedDateTime,
    required this.consignmentNo,
    required this.name,
    required this.bookingDate,
    required this.origin,
    required this.originCountry,
    required this.destination,
    required this.destinationCountry,
    required this.consignee,
    required this.station,
    required this.dateTime,
    required this.recievedBy,
    required this.status,
    required this.code,
  });
}
