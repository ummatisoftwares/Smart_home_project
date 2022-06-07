import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:senior/app/data/models/auth_model.dart';

import '../models/devices_model.dart';

class ControlProvider extends GetConnect {
  @override
  void onInit() {
  }

  Future<Response?> turnOn(String deviceId) async {
    final storage = GetStorage();
    String token = storage.read("authToken");
    final response = await get(
        'https://api.sinric.pro/api/v1/devices/$deviceId/action?clientId=android-app&type=request&createdAt=1550493108338&action=setPowerState&value={"state": "On"}',
        headers: {"Authorization": 'Bearer $token'});
    return response;
  }

  Future<Response?> turnOff(String deviceId) async {
    final storage = GetStorage();
    String token = storage.read("authToken");
    final response = await get(
        'https://api.sinric.pro/api/v1/devices/$deviceId/action?clientId=android-app&type=request&createdAt=1550493108338&action=setPowerState&value={"state": "Off"}',
        headers: {"Authorization": 'Bearer $token'});
    return response;
  }

}
