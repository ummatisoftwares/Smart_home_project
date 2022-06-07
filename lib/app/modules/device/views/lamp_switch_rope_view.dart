import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LampSwitchRopeView extends GetView {
  final double screenWidth, screenHeight;
  final Color color;
  final bool isSwitchOn;
  final Duration animationDuration;

  const LampSwitchRopeView({Key? key, required this.screenWidth, required this.screenHeight, required this.color, required this.isSwitchOn, required this.animationDuration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: animationDuration,
      top: screenHeight * 0.4,
      bottom: screenHeight * (isSwitchOn ? 0.34 : 0.38),
      width: 2,
      right: screenWidth * 0.5 - 1,
      child: Container(
        color: color,
      ),
    );
  }
}
