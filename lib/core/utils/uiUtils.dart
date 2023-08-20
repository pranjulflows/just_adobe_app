import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';

import 'arguments.dart';

DateTime? loginClickTime;

void logger(String message) {
  if (!kDebugMode) return;
  log(message);
}

var pref = GetStorage();

String? getUserToken() {
  return pref.read(Arguments.userToken);
}

bool isRedundentClick(DateTime currentTime) {
  if (loginClickTime == null) {
    loginClickTime = currentTime;
    print("first click");
    return false;
  }
  // print('diff is ${currentTime.difference(loginClickTime!).inSeconds}');
  if (currentTime.difference(loginClickTime!).inMilliseconds < 500) {
    //set this difference time in seconds
    return true;
  }
  loginClickTime = currentTime;
  return false;
}
// Future<void> launchUrlInBrowser({required String stringUrl}) async {
//   final Uri url = Uri.parse(stringUrl);
//
//   if (!await launchUrl(url)) {
//     throw 'Could not launch $url';
//   }
// }

showSnackbar({required String message, bool isError = false}) {
  Get.snackbar(
    "",
    message,
    snackPosition: SnackPosition.BOTTOM,
    titleText: Container(),
    messageText: AppTextWidget(
        text: message,
        style: Theme.of(Get.context!).textTheme.bodyText1!.copyWith(
            color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w400)),
    backgroundColor: isError
        ? lightColorPalette.redSwatch.shade700
        : lightColorPalette.greySwatch.shade800,
    borderRadius: 10,
    margin: EdgeInsets.all(10.r),
    colorText: Colors.white,
    duration: const Duration(milliseconds: 1500),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.decelerate,
  );
}
