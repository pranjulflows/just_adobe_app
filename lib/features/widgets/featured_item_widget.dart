import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/common_ui/image_resources.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      width: 120.w,
      height: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Container(
        margin: EdgeInsets.all(5.r),
        child: Column(
          children: [
            Container(
              width: 110.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.r)),
                  image: DecorationImage(
                      image: AssetImage(ImageResource.buildingImage),
                      fit: BoxFit.fill)),
              child: SizedBox(
                width: 20.w,
                height: 20.h,
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.all(3.r),
                    decoration: BoxDecoration(
                        color: const Color(0xFF234795),
                        borderRadius: BorderRadius.circular(2.r)),
                    child: Wrap(
                      children: [
                        AssetWidget(
                                width: 5.w,
                                height: 5.h,
                                asset: Asset(
                                    path: ImageResource.energyImage,
                                    type: AssetType.png))
                            .paddingOnly(left: 3.w),
                        AppTextWidget(
                                text: 'FEATURED',
                                style: TextStyle(
                                    fontSize: 8.sp, color: Colors.white))
                            .paddingOnly(right: 3.w),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: AppTextWidget(
                      text: "Techone Industries",
                      style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                  .paddingSymmetric(horizontal: 5.w),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: AppTextWidget(
                      text: "by Nagendra Singh Negi",
                      style: TextStyle(fontSize: 8.sp, color: Colors.black))
                  .paddingSymmetric(horizontal: 5.w),
            ),
            SizedBox(
              height: 2.h,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: AppTextWidget(
                  text: "₹ 24,87 Lacs",
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: const Color(0xFF234795),
                    fontWeight: FontWeight.bold,
                  )).paddingSymmetric(horizontal: 5.w),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: AppTextWidget(
                  text: "Address will be goes here",
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: Colors.black,
                  )).paddingSymmetric(horizontal: 5.w),
            ),
          ],
        ),
      ),
    );
  }
}
