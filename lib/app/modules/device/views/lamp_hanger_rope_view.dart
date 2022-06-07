import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LampHangerRopeView extends GetView {
  final double screenWidth, screenHeight;
  final Color color;

  const LampHangerRopeView({Key? key, required this.screenWidth, required this.screenHeight, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.2,
      child: Container(
        color: color,
        width: 15,
        height: screenHeight * 0.15,
      ),
    );
  }
}
