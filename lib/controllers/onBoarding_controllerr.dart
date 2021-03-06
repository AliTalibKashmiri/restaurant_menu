import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:restaurant_menu/models/onboarding_model.dart';

class onBoardingController extends GetxController{


  var selectedPageIndex = 0.obs;
  var pageController = PageController();


  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length -1;
  forwardPage(){
    if(isLastPage){
      Get.offNamed("/SignInPage");
    }
    else
   pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<onBoardingModel> onBoardingPages = [

    onBoardingModel(
      imageUrl: 'assets/images/onboarding1.png',
      title: 'Hotel Offers',
      description: 'Book one of our unique hotel to escape the ordinary',
    ),
    onBoardingModel(
      imageUrl: 'assets/images/onboarding3.png',
      title: 'Organized Stay',
      description: 'Find deals for any season from cosy country home to city flats',
    ),
    onBoardingModel(
      imageUrl: 'assets/images/onboarding2.png',
      title: 'Holiday colony',
      description: 'Book one of our unique hotel to escape the ordinary',
    ),

  ];

}