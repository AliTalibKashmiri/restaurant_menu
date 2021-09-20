import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:restaurant_menu/utils/my_theme.dart';
import 'package:restaurant_menu/views/home.dart';
import 'package:restaurant_menu/views/on_boarding.dart';
import 'package:restaurant_menu/views/splash_screen.dart';

import 'splash_screen.dart';




class MyApp extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: SplashScreen(),
      initialRoute: "/splash",

      getPages: [

        GetPage(name: "/splash", page: () => SplashScreen()),

        // GetPage(name: "/OnBording", page: () => onBoardingpage()),
        // // GetPage(name: "/SignInPage", page: () => SignInPage()),
        // GetPage(name: "/SignUpPage", page: () => SignUpPage()),
        GetPage(name: "/homepage", page: () => homepage()),

      ],
    );
  }
}
