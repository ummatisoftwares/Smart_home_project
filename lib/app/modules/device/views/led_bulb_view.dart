import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LedBulbView extends GetView {

  final double screenWidth, screenHeight;
  final Color onColor, offColor;
  final bool isSwitchOn;
  final Duration animationDuration = const Duration(milliseconds: 4000);

  const LedBulbView(
      {Key? key, required this.screenWidth, required this.screenHeight, required this.onColor, required this.offColor, required this.isSwitchOn})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.1,
      top: screenHeight * 0.35,
      child: AnimatedContainer(
        duration: animationDuration,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSwitchOn ? onColor : offColor,
        ),
      ),
    );
  }
}
