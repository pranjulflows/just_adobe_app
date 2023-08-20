import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/utils/uiUtils.dart';

class CommonButtonCircularIndicator extends StatelessWidget {
  final Color? bgColor;
  final Color? indicatorColor;
  final bool? isEnable;
  final bool? isIconEnable;
  final double? radius;
  final double? elevation;
  final double vertical;
  final double horizontal;
  final double? minWidth;
  final double? minHeight;
  final TextStyle? style;
  final MainAxisAlignment? mainAxisAlignment;
  final double? spaceBetween;
  final String? image;
  final bool? needStyle;

  const CommonButtonCircularIndicator({
    Key? key,
    this.bgColor = const Color(0xff046EFF),
    this.indicatorColor = Colors.white,
    this.radius = 20.0,
    this.elevation = 0.0,
    this.vertical = 18.0,
    this.horizontal = 0.0,
    this.minWidth = 327,
    this.isEnable = true,
    this.isIconEnable = true,
    this.style,
    this.needStyle,
    this.mainAxisAlignment,
    this.spaceBetween,
    this.minHeight,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: null,
        //           onPressed:() {
        //   if (isRedundentClick(DateTime.now())) {
        //     // print('hold on, processing');
        //     return;
        //   }
        //   onPress!();
        // },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius!)),
          backgroundColor: bgColor,
          disabledBackgroundColor: bgColor?.withOpacity(1),
          textStyle: style ??
              lightTextTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),

          splashFactory: isEnable == true ? null : NoSplash.splashFactory,
          elevation: elevation,
          maximumSize: Size(minWidth!, minHeight ?? 40.h),
          minimumSize: Size(minWidth!, minHeight ?? 40.h),
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: horizontal),

          // padding: EdgeInsets.zero,
          // // minimumSize: Size(50, 30),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: SizedBox(
          width: 24.w,
          height: 24.h,
          child: CircularProgressIndicator(
            color: indicatorColor,
          ),
        ));
  }
}