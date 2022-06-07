import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:senior/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) => Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "S Toggle",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: (){controller.LogOut();},
                    iconSize: 28,
                    color: Colors.indigo,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/banner.png",
                        scale: 1.2,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Center(
                      child: Text(
                        "Smart Home",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    const Text(
                      "DEVICES",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        controller.devicesList.isNotEmpty?
                        _cardMenu(onTap: () {controller.goToDevice(0);}, title: controller.devicesList[0].name.toString().toUpperCase(), icon: "assets/images/energy.png")
                        : Container(),

                        controller.devicesList.length > 1?
                        _cardMenu(onTap: () {controller.goToDevice(1);}, title: controller.devicesList[1].name.toString().toUpperCase(), icon: "assets/images/entertainment.png",)
                        : Container(),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        controller.devicesList.length > 2?
                        _cardMenu(onTap: () {controller.goToDevice(2);}, title:controller.devicesList[2].name.toString().toUpperCase(), icon: "assets/images/water.png")
                            : Container(),

                        controller.devicesList.length > 3?
                        _cardMenu(onTap: () {controller.goToDevice(3);}, title: controller.devicesList[3].name.toString().toUpperCase(), icon: "assets/images/entertainment.png",)
                            : Container(),
                      ],
                    ),
                  ],
                ),
              ),
              //Spacer(),
              SafeArea(child: Center(child: Text("+ Add New Device", style: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),)))
            ],
          ),
        ),
      ),
    );
  }

Widget _cardMenu({
  required String title,
  required String icon,
  VoidCallback? onTap,
  Color color = Colors.white,
  Color fontColor = Colors.grey,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(
        vertical: 36,
      ),
      width: 156,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Image.asset(icon),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: fontColor),
          )
        ],
      ),
    ),
  );
}
}