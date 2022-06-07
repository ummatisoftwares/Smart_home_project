import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:senior/app/data/providers/control_provider.dart';

class DeviceController extends GetxController {

  final count = 0.obs;
  final darkGray = const Color(0xFF232323);
  final bulbOnColor = const Color(0xFFFFE12C);
  final bulbOffColor = const Color(0xFFC1C1C1);
  final animationDuration = const Duration(milliseconds: 500);
  var isSwitchOn = false;

  void turnSwitch(){
    ControlProvider provider = ControlProvider();
    !isSwitchOn? provider.turnOn(Get.arguments['id']) : provider.turnOff(Get.arguments['id']);
    isSwitchOn = !isSwitchOn;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
