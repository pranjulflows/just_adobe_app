import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';

const double _kSize = 80;
class CommonLoader extends StatelessWidget {
  final bool isLoading;

  const CommonLoader({Key? key, required this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: Container(
        height: Get.height,
        width: Get.width,
        child: Center(
          child:  CupertinoActivityIndicator(
            radius: 24.r,
            color: lightColorPalette.primarySwatch.shade800,)
        ),
      ),
    );
  }
}