import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/common_ui/image_resources.dart';
import 'package:just_adobe_app/core/fixtures/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.homeScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f4f4),
        body: Center(
          child: AssetWidget(
            asset: Asset(type: AssetType.png, path: ImageResource.ovalLogo),
            boxFit: BoxFit.fill,
          ).marginSymmetric(horizontal: 20.w),
        ));
  }
}
