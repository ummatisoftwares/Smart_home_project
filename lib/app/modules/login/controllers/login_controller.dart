import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:senior/app/data/models/auth_model.dart';

import '../../../data/providers/auth_provider.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  final storage = GetStorage();

  Future<void> login(String email, String password) async {
    Auth auth;
    AuthProvider provider = AuthProvider();
    String encoded = "Basic ${base64.encode(utf8.encode("$email:$password"))}";
    var response = await provider.postAuth(encoded);
    if (response.statusCode == 200) {
      auth = Auth.fromJson(response.body);

      if(auth.success!) {
        storage.write("loggedIn", true);
        storage.write("authToken", auth.accessToken);
        Get.snackbar(
          "Login",
          "You Have Successfully Logged In!",
          icon: Icon(Icons.login),
          backgroundColor: Colors.amber[500],
        );
        Get.offNamed(Routes.HOME);
      }
      else {
        Get.snackbar(
          "Error",
          auth.message!,
          icon: Icon(Icons.error),
          backgroundColor: Colors.red[400],
        );
      }

    } else {
      Get.snackbar(
        "Error",
        "Email or Password are Wrong",
        icon: Icon(Icons.error),
        backgroundColor: Colors.red[400],
      );
    }
    // auth = response.body!;
    // print(auth.success);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    bool loggedIn = storage.read("loggedIn") ?? false;
    if(loggedIn) Get.offNamed(Routes.HOME);
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
