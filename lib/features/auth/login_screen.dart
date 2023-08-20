import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/common_ui/app_text_form_field.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/common_ui/image_resources.dart';
import 'package:just_adobe_app/core/controllers/main_controller.dart';

class LoginScreen extends GetView<MainController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: mainColor,
        child: SafeArea(
          child: Container(
            color: Color(0xfff5f5f5),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  color: mainColor,
                  height: 30.h,
                ),
                AssetWidget(
                        asset: Asset(
                            path: ImageResource.headImage, type: AssetType.png))
                    .marginOnly(top: 30.h),
                AssetWidget(
                    width: 140.h,
                    asset: Asset(
                        path: ImageResource.justAbodeWhiteLogo,
                        type: AssetType.png)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 30.w,
                      ),
                      width: Get.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 90.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppTextWidget(
                                text: "Welcome to",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ).paddingOnly(left: 10.w, top: 5),
                              AssetWidget(
                                width: 140.w,
                                asset: Asset(
                                    type: AssetType.png,
                                    path: ImageResource.ovalLogo),
                                boxFit: BoxFit.fill,
                              )
                            ],
                          ),
                          AppTextWidget(
                            text: "Verify your Phone Number",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ).paddingOnly(left: 30.w, top: 20.w),
                          SizedBox(
                            height: 20.h,
                          ),
                          AppTextFormField(
                                  controller: controller.phoneNumber,
                                  maxLength: 10,
                                  fillColor: mainColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  onChanged: (onChanged) {},
                                  hintText: 'Enter phone number',
                                  keyboardType: TextInputType.name,
                                  showCursor: true)
                              .marginSymmetric(horizontal: 30.w),
                          SizedBox(
                            height: 20.h,
                          ),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35.r),
                              child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: 105.w,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.w, vertical: 10.h),
                                  decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius:
                                          BorderRadius.circular(25.r)),
                                  child: Row(
                                    children: [
                                      AppTextWidget(
                                        text: "Submit",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      const Expanded(
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              AppTextWidget(
                                text: "By Clicking above you agree to",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ).paddingOnly(left: 30.w, top: 20.w),
                              AppTextWidget(
                                text: "Terms & Conditions",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor),
                              ).paddingOnly(top: 20.w, left: 5.w),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
