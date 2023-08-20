import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxString selectedValue = "Noida".obs;
  TextEditingController phoneNumber = TextEditingController();

}
