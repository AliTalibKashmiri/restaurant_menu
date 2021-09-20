import 'package:flutter/cupertino.dart';

class AccomodationModel{
  // ignore: non_constant_identifier_names
  AccomodationModel({
    required this.title,
    required this.address,
    required this.distance,



    required this.img,
    required this.TRating,
    required this.TReviews,
    required this.rate,
    required this.icon,
    required this.descrption});
  String title,distance,descrption,address,TRating,TReviews,img,rate;
  Widget icon;
}