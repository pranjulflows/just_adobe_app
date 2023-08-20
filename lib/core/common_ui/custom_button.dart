import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/utils/uiUtils.dart';

class CommonButton extends StatelessWidget {
  final Color? bgColor;
  final String commonButtonBottonText;
  final bool? isEnable;
  final bool? isIconEnable;
  final double? radius;
  final double? elevation;
  final double vertical;
  final double horizontal;
  final double? minWidth;
  final double? minHeight;
  final VoidCallback? onPress;
  final TextStyle? style;
  final ShowImagePositionAt? type;
  final MainAxisAlignment? mainAxisAlignment;
  final double? spaceBetween;
  final String? image;
  final bool? needStyle;

  const CommonButton(
      {Key? key,
      this.bgColor = const Color(0xff046EFF),
      required this.commonButtonBottonText,
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
      required this.onPress,
      this.type = ShowImagePositionAt.none})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress == null
            ? null
            : () {
                if (isRedundentClick(DateTime.now())) {
                  // print('hold on, processing');
                  return;
                }
                onPress!();
              },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius!)),
          backgroundColor: bgColor,
          disabledBackgroundColor: lightColorPalette.greySwatch.shade300,
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment == null
              ? MainAxisAlignment.center
              : mainAxisAlignment!,
          children: [
            type == ShowImagePositionAt.left
                ? AssetWidget(
                    color: needStyle != null && needStyle! && !isIconEnable!
                        ? lightColorPalette.whiteColorPrimary.shade800
                            .withAlpha(90)
                        : lightColorPalette.whiteColorPrimary.shade800,
                    height: 12.h,
                    width: 12.w,
                    asset: Asset(type: AssetType.svg, path: image!),
                  )
                : Container(),
            Padding(
              padding: EdgeInsets.only(
                  left: spaceBetween == null ? 5.w : spaceBetween!),
              child: Text(
                  textAlign: TextAlign.center,
                  commonButtonBottonText,
                  style: style),
            ),
            type == ShowImagePositionAt.right
                ? AssetWidget(
                    boxFit: BoxFit.fill,
                    asset: Asset(type: AssetType.svg, path: image!),
                  )
                : Container(),
          ],
        ));
  }
}

// class SmallCommonButton extends StatelessWidget {
//   final Color? bgColor, disabledBackgroundColor;
//   final String commonButtonBottonText;
//   final double? radius;
//   final double elevation;
//   final bool? isDashBoard;
//
//   final TextStyle? style;
//   final Function()? onPress;
//   final TextAlign? textAlign;
//
//   final double minWidth;
//
//   final double minHeight;
//   final double? horizontal;
//   final double? vertical;
//
//   const SmallCommonButton(
//       {Key? key,
//       this.bgColor = const Color(0xff009FD4),
//       required this.commonButtonBottonText,
//       this.radius,
//       this.elevation = 0.0,
//       this.isDashBoard,
//       this.style,
//       this.onPress,
//       this.textAlign,
//       this.disabledBackgroundColor,
//       required this.minWidth,
//       required this.minHeight,
//       this.horizontal,
//       this.vertical})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: onPress,
//         style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(radius ?? 8.r)),
//           backgroundColor: bgColor,
//           disabledBackgroundColor: disabledBackgroundColor,
//           elevation: elevation,
//           padding: EdgeInsets.symmetric(
//               horizontal: horizontal ?? 0, vertical: vertical ?? 0),
//           minimumSize: Size(minWidth, minHeight),
//           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         ),
//         child: Text(
//           commonButtonBottonText,
//           style: SmallButtonLabelTextFieldStyle(context: context),
//           textAlign: textAlign,
//         ));
//   }
// }

enum ShowImagePositionAt { right, left, none }
