import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:restaurant_menu/controllers/accomodation_controller.dart';
import 'package:restaurant_menu/controllers/nearByServicesTab.dart';
import 'package:restaurant_menu/controllers/services_controller.dart';
import 'package:restaurant_menu/models/services_model.dart';
import 'package:restaurant_menu/views/widgets/appBar.dart';
import 'package:restaurant_menu/views/widgets/colors.dart';
import 'package:restaurant_menu/views/widgets/custom_icon_text_field.dart';
import 'package:restaurant_menu/views/widgets/home_tile.dart';

import 'on_boarding.dart';

class homepage extends StatelessWidget {
  final servicescontroller = Get.put(ServicesController());
  final tabController = Get.put(NearByServicesTabController());
  final accomodController = Get.put(AccomodationController());

  @override
  Widget build(BuildContext context) {
    int columnCount = 2;

    final primaryColor = Theme.of(context).primaryColor;
    final textstyle = Theme.of(context).textTheme;
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
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          // height: Get.height,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Welcome to Moonlight Restaurant',

                style: TextStyle(color: Colors.orange[700], fontSize: Get.height/45)

              ),
              TabBar(
                labelStyle: TextStyle(fontSize: 11),
                indicatorColor: mainColor1,
                labelColor: mainColor1,
                unselectedLabelColor: Colors.grey,
                labelPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                isScrollable: true,
                controller: tabController.tabController,
                tabs: [
                  Text("Foods", style: TextStyle(color: Colors.indigo[700], fontWeight: FontWeight.w500), ),
                  Text("Drinks", style: TextStyle(color: Colors.indigo[700], fontWeight: FontWeight.w500), ),
                  Text("Snacks", style: TextStyle(color:  Colors.indigo[700], fontWeight: FontWeight.w500),),
                  Text("Souces", style: TextStyle(color:  Colors.indigo[700], fontWeight: FontWeight.w500),),
                ],
              ),
              Container(
                  height: Get.height / 2.2,
                  child: TabBarView(
                    controller: tabController.tabController,
                    children: [
                      AnimationLimiter(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          padding: EdgeInsets.all(Get.width / 40),
                          itemCount: accomodController.listofhotels.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AnimationConfiguration.staggeredList(
                              position: index,
                              delay: Duration(milliseconds: 100),
                              child: SlideAnimation(
                                duration: Duration(milliseconds: 2500),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child: FadeInAnimation(
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: Duration(milliseconds: 2500),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.to(onBoardingpage());
                                      },
                                      child: NearByServicesTile(
                                        accomodationModel:
                                            accomodController.listofhotels[index],
                                      ),
                                    )),
                              ),
                            );
                          },
                        ),
                      ),

                      // here can be repalced the "sleep at home" list
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.all(Get.width / 30),
                        itemCount: accomodController.listofhotels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return NearByServicesTile(
                            accomodationModel:
                                accomodController.listofhotels[index],
                          );
                        },
                      ),

                      // here can be repalced the "organized stay" list
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.all(Get.width / 30),
                        itemCount: accomodController.listofhotels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return NearByServicesTile(
                            accomodationModel:
                                accomodController.listofhotels[index],
                          );
                        },
                      ),

                      // here can be repalced the "holiday colony" list
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        padding: EdgeInsets.all(Get.width / 30),
                        itemCount: accomodController.listofhotels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return NearByServicesTile(
                            accomodationModel:
                                accomodController.listofhotels[index],
                          );
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class servicesContainer extends StatefulWidget {
  ServicesModel model;
  servicesContainer(this.model);

  @override
  _servicesContainerState createState() => _servicesContainerState();
}

class _servicesContainerState extends State<servicesContainer> {
  final servicescontroller = Get.put(ServicesController());

  @override
  Widget build(BuildContext context) {
    double _w = Get.width;
    return Container(
      decoration: BoxDecoration(
        color: mainColor1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 40,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              widget.model.img,
              scale: 1.6,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.model.title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
