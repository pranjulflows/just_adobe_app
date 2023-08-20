import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/common_ui/image_resources.dart';
import 'package:just_adobe_app/core/controllers/main_controller.dart';
import 'package:just_adobe_app/features/widgets/dashboard_item.dart';

class DashboardScreen extends GetView<MainController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(6.r),
                color: mainColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AssetWidget(
                        width: 140.h,
                        asset: Asset(
                            path: ImageResource.justAbodeWhiteLogo,
                            type: AssetType.png)),
                    AssetWidget(
                        width: 40.h,
                        asset: Asset(
                            path: ImageResource.myProfile, type: AssetType.png))
                  ],
                ),
              ),
              AppTextWidget(
                      text: 'Namaste!🙏',
                      style: TextStyle(fontSize: 18.sp, color: Colors.black))
                  .paddingOnly(left: 10.w, top: 10.h),
              AppTextWidget(
                      text: 'We are glad to see you again!',
                      style: TextStyle(fontSize: 10.sp, color: Colors.black))
                  .paddingOnly(left: 10.w),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20.r),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16.r)),
                  child: ListView(
                    children: [DashboardItem()],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
