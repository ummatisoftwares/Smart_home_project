import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:senior/app/modules/device/views/lamp_hanger_rope_view.dart';
import 'package:senior/app/modules/device/views/lamp_switch_rope_view.dart';
import 'package:senior/app/modules/device/views/lamp_switch_view.dart';
import 'package:senior/app/modules/device/views/lamp_view.dart';
import 'package:senior/app/modules/device/views/led_bulb_view.dart';
import 'package:senior/app/modules/device/views/room_view.dart';

import '../controllers/device_controller.dart';

class DeviceView extends GetView<DeviceController> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GetBuilder<DeviceController>(
        builder: (controller) =>
        Stack(
          children: <Widget>[
            LampHangerRopeView(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                color: controller.darkGray
            ),
            LedBulbView(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              onColor: controller.bulbOnColor,
              offColor: controller.bulbOffColor,
              isSwitchOn: controller.isSwitchOn,
            ),
            LampView(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              color: controller.darkGray,
              isSwitchOn: controller.isSwitchOn,
              gradientColor: controller.bulbOnColor,
              animationDuration: controller.animationDuration,
            ),
            LampSwitchView(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              toggleOnColor: controller.bulbOnColor,
              toggleOffColor: controller.bulbOffColor,
              color: controller.darkGray,
              isSwitchOn: controller.isSwitchOn,
              onTap: () {
                controller.turnSwitch();
              },
              animationDuration: controller.animationDuration,
            ),
            LampSwitchRopeView(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              color: controller.darkGray,
              isSwitchOn: controller.isSwitchOn,
              animationDuration: controller.animationDuration,
            ),
            RoomView(
              screenWidth: screenWidth,
              screenHeight: screenWidth,
              color: controller.darkGray,
              roomName: Get.arguments['name'],
            ),
          ],
        ),
      ),
    );
  }
}
