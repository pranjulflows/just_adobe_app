import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';

class DashboardItem extends StatelessWidget {
  final int itemCount;

  const DashboardItem({Key? key, this.itemCount = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.r),
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        children: [
          Column(
            children: [
              AppTextWidget(
                      text: 'My Properties',
                      style: TextStyle(fontSize: 8.sp, color: Colors.black))
                  .paddingOnly(right: 3.w),
              AppTextWidget(
                      text: itemCount.toString(),
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                  .paddingOnly(right: 3.w),
            ],
          ),
          Icon(Icons.home)
        ],
      ),
    );
  }
}
