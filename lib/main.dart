import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_adobe_app/core/app/just_adobe_app.dart';
import 'package:just_adobe_app/core/fixtures/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'hiBooks',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            getPages: AppPages(),
            initialRoute: Routes.INITIAL,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              // textTheme: AppContainer.of(context).textTheme,
              // fontFamily: Constants.interFont,
            ),
          );
        });
  }
}

