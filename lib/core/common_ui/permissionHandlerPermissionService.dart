import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerPermissionService {
  Future<bool> handleCameraPermission() async {
    PermissionStatus cameraPermissionStatus = await Permission.camera.request();
    if (cameraPermissionStatus == PermissionStatus.granted) {
      return true;
    }else if(cameraPermissionStatus == PermissionStatus.permanentlyDenied){
      showCameraPermissionDialogue();
      return false;
    }else{
      return false;
    }
  }

  Future<bool> handlePhotosPermission() async {
    print("come");
    PermissionStatus photosPermissionStatus = await Permission.storage.request();
    print("come ${photosPermissionStatus}");
    if (photosPermissionStatus == PermissionStatus.granted) {
      return true;
    }else if(photosPermissionStatus == PermissionStatus.permanentlyDenied){
      showGalleryPermissionDialogue();
      return false;
    }else{
      return false;
    }
  }


  static showCameraPermissionDialogue() async{
    OkCancelResult result = await showOkCancelAlertDialog(
      context: Get.context!,
      title: "Permission Denied!!",
      message: "This app does not have permission to use Camera",
      okLabel: "Go to Setting",
      cancelLabel: "Cancel",
      style: AdaptiveStyle.iOS,
      isDestructiveAction: true,
    );

    if(result==OkCancelResult.ok){
      openAppSettings();
    }

  }

  static showGalleryPermissionDialogue() async{
    OkCancelResult result = await showOkCancelAlertDialog(
      context: Get.context!,
      title: "Permission Denied!!",
      message: "This app does not have permission to use Photos",
      okLabel: "Go to Setting",
      cancelLabel: "Cancel",
      style: AdaptiveStyle.iOS,
      isDestructiveAction: true,
    );

    if(result==OkCancelResult.ok){
      openAppSettings();
    }

  }
}