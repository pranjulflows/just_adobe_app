import 'package:get/get.dart';
import 'package:just_adobe_app/core/controllers/main_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}
