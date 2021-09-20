import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar myappBar(
    {required BuildContext context,
    required String title,
    required Widget leading,
    required Widget action,
    required double height,
    required bool centerTitle,
    }) {
  return AppBar(
    leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: leading),
    actions: [action],
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(title,
        style: TextStyle(
          fontFamily: 'WorkSans',
          color: Color(0xff3A3834),
          fontSize: 18,
          fontStyle: FontStyle.normal,
        )),
    toolbarHeight: height,
  );
}

AppBar homeAppBar(
    {
    required Widget title,
    required Widget leading,
    required Widget action,
    required double height,
    required bool centerTitle,
    }) {
  return AppBar(
    leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: leading),
    actions: [action],
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: title,
    toolbarHeight: height,
  );
}

AppBar tabappBar(
    {required BuildContext context,
    required String title,
    required Widget leading,
    required Widget action,data,
    required double height,
    required bool centerTitle,
    }) {
  return AppBar(
    leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: leading),
    actions: [action],
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(title,
        style: TextStyle(
          fontFamily: 'WorkSans',
          color: Color(0xff3A3834),
          fontSize: 18,
          fontStyle: FontStyle.normal,
        )),
    toolbarHeight: height,
    bottom: data,
  );
}
