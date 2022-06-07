import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RoomView extends GetView {
  final double screenWidth, screenHeight;
  final Color color;
  final String roomName;

  const RoomView({Key? key, required this.screenWidth, required this.screenHeight, required this.color, required this.roomName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.25,
      width: screenWidth,
      child: Center(
        child: Transform.rotate(
          angle: -1.58,
          child: Text(
            roomName.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
