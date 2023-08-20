import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/common_ui/image_resources.dart';

class DashboardWidgets{
  final publicBottomMenus = [
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.home, type: AssetType.png)),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.aboutUs, type: AssetType.png)),
      label: 'About us',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.residential, type: AssetType.png)),
      label: 'Residential',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.commercial, type: AssetType.png)),
      label: 'Commercial',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.contactUs, type: AssetType.png)),
      label: 'Contact Us',
    ),
  ];
  final loggedInBottomMenus = [
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 30.h,
          width: 30.w,
          asset: Asset(path: ImageResource.home, type: AssetType.png)),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.dashboard, type: AssetType.png)),
      label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.leads, type: AssetType.png)),
      label: 'My Leads',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.myProperty, type: AssetType.png)),
      label: 'My Property',
    ),
    BottomNavigationBarItem(
      icon: AssetWidget(
          height: 28.h,
          width: 28.w,
          asset: Asset(path: ImageResource.myProfile, type: AssetType.png)),
      label: 'My Profile',
    ),
  ];
}
