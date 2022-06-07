import 'package:get/get.dart';
import '../models/auth_model.dart';

class AuthProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Auth.fromJson(map);
      if (map is List) return map.map((item) => Auth.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://api.sinric.pro/api/v1/';
  }

  Future<Auth?> getAuth(int id) async {
    final response = await get('auth/$id');
    return response.body;
  }

  Future<Response> postAuth(String auth) async {
    var response = await post('https://api.sinric.pro/api/v1/auth', {
      "client_id": "6c50d0bc-a4e0-471e-a34c-2852e4f02360-2aca44ee-b80f-4a82-87d9-df3f8b2b7b8e"
    }, headers: {
      "Authorization": auth
    },);
    return response;
  }

  Future<Response> deleteAuth(int id) async => await delete('auth/$id');
}
