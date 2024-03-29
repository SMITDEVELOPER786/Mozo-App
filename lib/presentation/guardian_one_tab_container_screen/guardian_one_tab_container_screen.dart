import 'package:muhammad_zubair_s_application4/presentation/guardian_screen/guardian_screen.dart';

import 'controller/guardian_one_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/guardian_one_page/guardian_one_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class GuardianOneTabContainerScreen extends StatefulWidget {
  const GuardianOneTabContainerScreen({Key? key}) : super(key: key);

  @override
  State<GuardianOneTabContainerScreen> createState() => _GuardianOneTabContainerScreenState();
}

class _GuardianOneTabContainerScreenState extends State<GuardianOneTabContainerScreen> {

  var controller = Get.put(GuardianOneTabContainerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 26.v),
                      Container(
                          height: 20.v,
                          width: 239.h,
                          margin: EdgeInsets.only(left: 20.h),
                          child: TabBar(
                              controller: controller.tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: appTheme.green80005,
                              labelStyle: TextStyle(
                                  fontSize: 11.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                              unselectedLabelColor: appTheme.gray60008,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: 12.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500),
                              indicatorColor: appTheme.green80005,
                              tabs: [
                                Tab(child: Text("lbl_open_guardian".tr)),
                                Tab(child: Text("lbl_my_guardian".tr)),
                                Tab(child: Text("lbl_guard_me".tr))
                              ])),
                      Expanded(
                          child: SizedBox(
                              height: 750.v,
                              child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [
                                    GuardianOnePage(),
                                    GuardianScreen(),
                                    GuardianOnePage()
                                  ])))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      
        height: 45.v,
        leadingWidth: 44.h,
        leading:GestureDetector(
          onTap: (){
            onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios,)),
        
        //  AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_guardian".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
