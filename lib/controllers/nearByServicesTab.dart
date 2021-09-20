import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NearByServicesTabController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 4);
    super.onInit();
  }
}