import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:restaurant_menu/controllers/onBoarding_controllerr.dart';
import 'package:restaurant_menu/views/widgets/appBar.dart';
import 'package:restaurant_menu/views/widgets/custom_button.dart';
import 'package:restaurant_menu/views/widgets/slider_items.dart';


class onBoardingpage extends StatelessWidget {

  final controller = Get.put(onBoardingController());
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: homeAppBar(
        leading: SizedBox(),
        action: SizedBox(),
        height: 90,
        title: Image.asset(
          "assets/images/logo.png",
          scale: 1.6,
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/images/food3.jpg",
                  scale: 1.6,
                ),
              ),
              SizedBox(height: Get.height/20),
              Text("Delivery info", style: TextStyle(color: Colors.orange[700], fontSize: Get.height/50),),
              SizedBox(height: Get.height/60),
              Text("Delivered between monday aug and thursday 20 from 8pm to 91:32 pm", style: TextStyle(color: Colors.grey[600], fontSize: Get.height/70),),
              SizedBox(height: Get.height/50),
              Text("Return policy", style: TextStyle(color: Colors.orange[700], fontSize: Get.height/50),),
              SizedBox(height: Get.height/60),
              Text("All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.", style: TextStyle(color: Colors.grey[600], fontSize: Get.height/70),),

            ],
          ),
        ),
      ),
    );
  }
}
