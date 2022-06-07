import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:senior/app/data/models/auth_model.dart';

import '../models/devices_model.dart';

class DevicesProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Devices.fromJson(map);
      if (map is List) {
        return map.map((item) => Devices.fromJson(item)).toList();
      }
    };
  }

  Future<Response?> getDevices() async {
    final storage = GetStorage();
    String token = storage.read("authToken");
    final response = await get('https://api.sinric.pro/api/v1/devices/', headers: {"Authorization": 'Bearer $token'});
    return response;
  }

  Future<Response<Devices>> postDevices(Devices devices) async =>
      await post('devices', devices);
  Future<Response> deleteDevices(int id) async => await delete('devices/$id');
}
