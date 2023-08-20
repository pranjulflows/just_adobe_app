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
import 'package:just_adobe_app/features/widgets/featured_item_widget.dart';

class HomeTabScreen extends GetView<MainController> {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Container(
          color: mainColor,
          child: SafeArea(
            child: Container(
              color: Color(0xfff5f5f5),
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  AssetWidget(
                      asset: Asset(
                          path: ImageResource.headImage, type: AssetType.png)),
                  Positioned(
                    left: 0,
                    child: AssetWidget(
                        width: 140.h,
                        asset: Asset(
                            path: ImageResource.justAbodeWhiteLogo,
                            type: AssetType.png)),
                  ),
                  Positioned(
                    top: 2,
                    right: 10,
                    child: Container(
                      width: 130.h,
                      height: 30.h,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                        value: controller.selectedValue.value,
                        onChanged: (String? newValue) {
                          controller.selectedValue.value = newValue!;
                        },
                        items: <String>[
                          'Noida',
                          'Noida Extension',
                          'Greater Noida',
                          'Ghaziabad',
                          'Delhi'
                        ]
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 11.sp),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      AppTextWidget(
                          text: "Your Next Home is Here.",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.white)),
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
                        child: DefaultTabController(
                          length: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TabBar(
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                onTap: (index) {
                                  print(index);
                                },
                                labelColor: Colors.black,
                                tabs: const [
                                  Tab(text: 'Commercial'),
                                  Tab(text: 'Residential'),
                                ],
                              ).paddingSymmetric(horizontal: 16.w),
                              AppTextWidget(
                                text: "Search",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ).paddingOnly(left: 10.w, top: 15.h),
                              AppTextFormField(
                                      onChanged: (onChanged) {},
                                      hintText: 'Enter Keywords',
                                      keyboardType: TextInputType.name,
                                      showCursor: true)
                                  .paddingSymmetric(horizontal: 16.w),
                              AppTextWidget(
                                text: "Looking for",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ).paddingOnly(left: 10.w, top: 15.h),
                              Container(
                                width: 130.h,
                                height: 30.h,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    color: Color(0xfff5f5f5),
                                    borderRadius: BorderRadius.circular(8.r)),
                                child: DropdownButton<String>(
                                  dropdownColor: Colors.white,
                                  borderRadius: BorderRadius.circular(8.r),
                                  value: controller.selectedValue.value,
                                  onChanged: (String? newValue) {
                                    controller.selectedValue.value = newValue!;
                                  },
                                  items: <String>[
                                    'Noida',
                                    'Noida Extension',
                                    'Greater Noida',
                                    'Ghaziabad',
                                    'Delhi'
                                  ]
                                      .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(fontSize: 11.sp),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ).paddingOnly(left: 10.w, top: 5.h),
                              Align(
                                alignment: AlignmentDirectional.centerEnd,
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
                                            text: "Search",
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
                                ).paddingOnly(right: 10),
                              ),
                              SizedBox(
                                height: 10.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: AppTextWidget(
                                text: "Featured Projects",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                            .paddingOnly(left: 10.w),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: AppTextWidget(
                                text: "Exclusive showcase of top projects",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.black))
                            .paddingOnly(left: 10.w),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 110.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return FeaturedItem();
                            }),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Flexible(
                        child: SizedBox(
                          height: 110.h,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: AppTextWidget(
                                        text: "Ready To Move\nIn Projects",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black))
                                    .paddingOnly(left: 10.w,right: 5.w),
                              ),
                              SizedBox(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return FeaturedItem();
                                    }),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
