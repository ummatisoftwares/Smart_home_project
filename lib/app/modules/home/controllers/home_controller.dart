import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:senior/app/data/models/devices_model.dart';
import 'package:senior/app/data/providers/devices_provider.dart';
import 'package:senior/app/routes/app_pages.dart';

class HomeController extends GetxController {

  final count = 0.obs;
  List<Devices> devicesList = [];
  final storage = GetStorage();

  void LogOut() {
    storage.write("loggedIn", false);
    Get.offNamed(Routes.LOGIN);
  }

  void goToDevice(int dev) {
    print(devicesList[dev].id);
    Get.toNamed(Routes.DEVICE, arguments: {
      "name": devicesList[dev].name,
      "id": devicesList[dev].id,}
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    DevicesProvider provider = DevicesProvider();
    var response = await provider.getDevices();
    AllDevices AllDevice = AllDevices.fromJson(response!.body);
    devicesList = AllDevice.devices!;
    update();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
