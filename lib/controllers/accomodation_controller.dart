import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:like_button/like_button.dart';
import 'package:restaurant_menu/models/accomodation_Model.dart';

class AccomodationController extends GetxController
{
  List <AccomodationModel> listofhotels=
  [
    AccomodationModel(
      img:"assets/images/food.jpg",
        title: "1 zinger burger",
      descrption: "1 regular drink",
      address: " small fries box",
      distance: "3.4",
      icon: LikeButton(
        size: 14,


        onTap: onLikedButtonTapped,
      ),
      rate: "\$161",TRating: "4.9",TReviews: "1123",
    ),

    AccomodationModel(
      img:"assets/images/food1.jpg",
        title: "Guest houses",
      descrption: "Fabulous three bed entire house",
      address: "New York, United States",
      distance: "3.7",
      icon: LikeButton(
        size: 14,


        onTap: onLikedButtonTapped,
      ),
      rate: "\$170",TRating: "4.9",TReviews: "233",
    )
  ];

  List<AccomodationModel> accomodation = [

    AccomodationModel(
      img: "assets/images/hotels.png",
      title: "Hotels",
        TReviews: 'jdsg',
      address: "",
      descrption: "",
      distance: "",
      rate: "",
      TRating: "",
      icon: Icon(Icons.eighteen_mp)
    ),
    AccomodationModel(
        img: "assets/images/hotels.png",
        title: "Hotels",
        TReviews: 'jdsg',
        address: "",
        descrption: "",
        distance: "",
        rate: "",
        TRating: "",
        icon: Icon(Icons.eighteen_mp)
    ),
    AccomodationModel(
        img: "assets/images/hotels.png",
        title: "Hotels",
        TReviews: 'jdsg',
        address: "",
        descrption: "",
        distance: "",
        rate: "",
        TRating: "",
        icon: Icon(Icons.eighteen_mp)
    ),
  ];

}
Future<bool> onLikedButtonTapped(bool isLiked) async {
  return !isLiked;
}