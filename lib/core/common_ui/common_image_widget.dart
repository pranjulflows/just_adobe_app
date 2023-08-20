import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_adobe_app/core/app/theme/app_color_palette.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:shimmer/shimmer.dart';


class AssetWidget extends StatelessWidget {
  final Asset asset;
  final double? width;
  final File? file;
  final double? height;
  final Color? color;
  final BoxFit? boxFit;
  final String? firstName;
  final String? lastName;
  final bool? isCircular;

  const AssetWidget(
      {Key? key,
        required this.asset,
        this.width,
        this.file,
        this.firstName,
        this.isCircular = false,
        this.lastName,
        this.height,
        this.color,
        this.boxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (asset.type) {
      case AssetType.png:
        return Image(
            image: AssetImage(asset.path),
            width: width,
            height: height,
            fit: boxFit,
            color: color);
      case AssetType.svg:
        return SvgPicture.asset(
          asset.path,
          width: width,
          height: height,
          color: color,
          fit: boxFit ?? BoxFit.contain,
        );
      case AssetType.file:
        return Image.file(
          asset.file!,
          width: width,
          height: height,
          color: color,
          fit: boxFit ?? BoxFit.contain,
        );
      case AssetType.network:
        return CachedNetworkImage(
          height: height,
          width: width,
          imageUrl: asset.path,
          fit: boxFit ?? BoxFit.cover,
          placeholder: (context, url) => loadingWidget(),
          errorWidget: (context, url, error) => loadingWidget(),
        );
    }
  }

  Widget loadingWidget() {
    return Shimmer.fromColors(
        baseColor: lightColorPalette.greySwatch.shade300,
        highlightColor: Colors.transparent,
        child: Container(
          color: lightColorPalette.greySwatch.shade300,
          // constraints: BoxConstraints(maxHeight: 234.h,),
        ));
  }
}