import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:just_adobe_app/core/common_ui/app_text_view.dart';
import 'package:just_adobe_app/core/common_ui/asset.dart';
import 'package:just_adobe_app/core/common_ui/common_image_widget.dart';
import 'package:just_adobe_app/core/common_ui/image_resources.dart';
import 'package:just_adobe_app/core/utils/string_resources.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AssetWidget(
                width: 1.sw,
                height: 50.h,
                asset:
                    Asset(path: ImageResource.ovalLogo, type: AssetType.png)),
            SizedBox(
              height: 10.h,
            ),
            Text.rich(TextSpan(
                style: TextStyle(
                  fontSize: 16.h,
                ),
                text: StringsResources.catalogueTextOne,
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Just',
                    style:
                        TextStyle(fontSize: 16.h, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Abode',
                    style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1F3F83)),
                  ),
                ])),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 100.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xFF234795),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextWidget(
                              text: "High Rise Apartment",
                              style: TextStyle(color: Colors.white)),
                          AppTextWidget(
                              text: "2 Properties",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
