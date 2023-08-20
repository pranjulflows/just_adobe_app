import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';
import 'package:just_adobe_app/core/common_ui/permissionHandlerPermissionService.dart';
import 'package:just_adobe_app/core/utils/constants.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {
  GlobalKey _scaffold = GlobalKey();

  static showMyCameraGalleryDialog(
      BuildContext context, Function(XFile, String? type) filePicked) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
          title: AppTextWidget(
            text: "Select Photo",
            style: Theme.of(Get.context!).textTheme.headline1!.copyWith(
                fontSize: 12.sp,
                color: lightColorPalette.primarySwatch.shade800,
                fontWeight: FontWeight.w400,
                fontFamily: Constants.interFont),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: AppTextWidget(
                text: "Camera",
                style: Theme.of(Get.context!).textTheme.headline1!.copyWith(
                    fontSize: 14.sp,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontFamily: Constants.interFont),
                textAlign: TextAlign.center,
              ),
              onPressed: () async {
                Navigator.pop(context);
                XFile? file = await openCamera(context);
                if (file != null) {
                  filePicked(file, "camera");
                }
              },
            ),
            CupertinoActionSheetAction(
              child: AppTextWidget(
                text: "Photo Library",
                style: Theme.of(Get.context!).textTheme.headline1!.copyWith(
                    fontSize: 14.sp,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontFamily: Constants.interFont),
                textAlign: TextAlign.center,
              ),
              onPressed: () async {
                Navigator.pop(context);
                XFile? file = await openGallery(context);
                if (file != null) {
                  filePicked(file, "gallery");
                }
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: AppTextWidget(
              text: "Cancel",
              style: Theme.of(Get.context!).textTheme.headline1!.copyWith(
                  fontSize: 14.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontFamily: Constants.interFont),
              textAlign: TextAlign.center,
            ),
            isDefaultAction: true,
            onPressed: () {
              Get.back();
            },
          )),
    );
  }

  static Future<XFile?> openGallery(BuildContext context) async {
    PermissionHandlerPermissionService permissionHandlerPermissionService =
        PermissionHandlerPermissionService();
    var permision =
        await permissionHandlerPermissionService.handlePhotosPermission();
    print("permision<<<<<<$permision");
    if (permision == false) {
      await permissionHandlerPermissionService.handlePhotosPermission();
    } else {
      ImagePicker imagePicker = ImagePicker();
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      return pickedFile;
    }
    return null;
  }

  static Future<XFile?> openCamera(BuildContext context) async {
    PermissionHandlerPermissionService permissionHandlerPermissionService =
        PermissionHandlerPermissionService();
    var permision =
        await permissionHandlerPermissionService.handleCameraPermission();
    if (permision == false) {
      await permissionHandlerPermissionService.handleCameraPermission();
    } else {
      ImagePicker imagePicker = ImagePicker();
      final pickedFile = await imagePicker.pickImage(
          source: ImageSource.camera, imageQuality: 30);
      return pickedFile;
    }
    return null;
  }
}
