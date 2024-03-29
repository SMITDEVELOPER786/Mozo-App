import 'package:muhammad_zubair_s_application4/presentation/gift_one_tab_container_screen/gift_one_tab_container_screen.dart';

import 'controller/explore_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ExploreBottomsheet extends StatefulWidget {
  ExploreBottomsheet( {Key? key}) : super(key: key);

  @override
  State<ExploreBottomsheet> createState() => _ExploreBottomsheetState();
}

class _ExploreBottomsheetState extends State<ExploreBottomsheet> {
  // ExploreController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          decoration: AppDecoration.fillLime
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(height: 10.v),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 20.h),
                    child:
                        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Text("lbl_900_comments".tr,
                          style: CustomTextStyles.titleSmallGray80001Medium),
                      CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 102.h),
                          onTap: () {
                            onTapImgClose();
                          })
                    ]))),
            SizedBox(height: 27.v),
            _buildFrame4(),
            SizedBox(height: 19.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildFrame2(
                    userName: "lbl_lady_gaga".tr,
                    userDate: "lbl_06_19".tr,
                    userDescription: "msg_the_large_screen".tr,
                    viewReplies: "msg_view_replies_14".tr,
                    favoriteIcon: ImageConstant.imgVuesaxLinearHeart,
                    favoriteCount: "lbl_120".tr)),
            SizedBox(height: 19.v),
            _buildFrame8(),
            SizedBox(height: 19.v),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildFrame2(
                    userName: "lbl_lady_gaga".tr,
                    userDate: "lbl_06_19".tr,
                    userDescription: "msg_the_large_screen".tr,
                    viewReplies: "msg_view_replies_14".tr,
                    favoriteIcon: ImageConstant.imgFavorite,
                    favoriteCount: "lbl_120".tr)),
            SizedBox(height: 25.v),
            Divider(color: appTheme.gray400),
            SizedBox(height: 16.v),
            _buildFrame10()
          ])),
    );
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 23.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse26,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(24.h),
                  margin: EdgeInsets.only(bottom: 31.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("msg_alexander_mc_quin".tr,
                              style: CustomTextStyles.titleSmallGray80001),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 3.v),
                              child: Text("lbl_06_21".tr,
                                  style: CustomTextStyles.labelMediumGray50014))
                        ]),
                        SizedBox(height: 7.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildTheLargeScreen(
                                  userDescription: "msg_the_large_screen".tr),
                              CustomImageView(
                                  imagePath: ImageConstant.imgClose16x16,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 2.h, top: 15.v, bottom: 5.v)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgClose16x16,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 2.h, top: 15.v, bottom: 5.v))
                            ]),
                        SizedBox(height: 8.v),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text("msg_view_replies_4".tr,
                                  style:
                                      CustomTextStyles.labelMediumGray50014)),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 3.h))
                        ])
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 29.h, bottom: 35.v),
                  child: _buildFrame(
                      favoriteIcon: ImageConstant.imgFavorite,
                      favoriteCount: "lbl_20".tr))
            ]));
  }

  /// Section Widget
  Widget _buildFrame8() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse261,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(24.h),
                  margin: EdgeInsets.only(bottom: 31.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("lbl_fresh_vive".tr,
                              style: CustomTextStyles.titleSmallGray80001),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 3.v),
                              child: Text("lbl_06_18".tr,
                                  style: CustomTextStyles.labelMediumGray50014))
                        ]),
                        SizedBox(height: 7.v),
                        Row(children: [
                          SizedBox(
                              width: 213.h,
                              child: Text("msg_the_large_screen".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodySmallInterBluegray700)),
                          CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(top: 15.v, bottom: 5.v))
                        ]),
                        SizedBox(height: 8.v),
                        _buildFrame1(text: "msg_view_replies_10".tr)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 35.v),
                  child: _buildFrame(
                      favoriteIcon: ImageConstant.imgFavorite,
                      favoriteCount: "lbl_40".tr))
            ]));
  }

  /// Section Widget
  Widget _buildFrame10() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("lbl_add_comment".tr,
                  style: CustomTextStyles.titleSmallErrorContainer)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 24.adaptSize,
              width: 24.adaptSize),
          GestureDetector(
            onTap: (){
              showBottomSheet(context);
            },
            child: CustomImageView(
                imagePath: ImageConstant.imgSettingsGray80003,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h)),
          )
        ]));
  }

  /// Common widget
  Widget _buildTheLargeScreen({required String userDescription}) {
    return SizedBox(
        height: 28.v,
        width: 218.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 213.h,
                  child: Text(userDescription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallInterBluegray700
                          .copyWith(color: appTheme.blueGray700)))),
          CustomImageView(
              imagePath: ImageConstant.imgClose16x16,
              height: 8.adaptSize,
              width: 8.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 5.v))
        ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String favoriteIcon,
    required String favoriteCount,
  }) {
    return Column(children: [
      CustomImageView(
          imagePath: favoriteIcon, height: 25.adaptSize, width: 25.adaptSize),
      SizedBox(height: 3.v),
      Text(favoriteCount,
          style: CustomTextStyles.bodySmallInterGray80001
              .copyWith(color: appTheme.gray80001))
    ]);
  }

  /// Common widget
  Widget _buildFrame1({required String text}) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(text,
              style: CustomTextStyles.labelMediumGray50014
                  .copyWith(color: appTheme.gray50014))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 2.h))
    ]);
  }

  /// Common widget
  Widget _buildFrame2({
    required String userName,
    required String userDate,
    required String userDescription,
    required String viewReplies,
    required String favoriteIcon,
    required String favoriteCount,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse2648x48,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(24.h),
              margin: EdgeInsets.only(bottom: 31.v)),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text(userName,
                          style: CustomTextStyles.titleSmallGray80001
                              .copyWith(color: appTheme.gray80001)),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, top: 2.v),
                          child: Text(userDate,
                              style: CustomTextStyles.labelMediumGray50014
                                  .copyWith(color: appTheme.gray50014)))
                    ]),
                    SizedBox(height: 6.v),
                    SizedBox(
                        height: 28.v,
                        width: 218.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 213.h,
                                  child: Text(userDescription,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodySmallInterBluegray700
                                          .copyWith(
                                              color: appTheme.blueGray700)))),
                          CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 5.v))
                        ])),
                    SizedBox(height: 8.v),
                    Row(children: [
                      Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(viewReplies,
                              style: CustomTextStyles.labelMediumGray50014
                                  .copyWith(color: appTheme.gray50014))),
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 2.h))
                    ])
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 35.v),
              child: Column(children: [
                CustomImageView(
                    imagePath: favoriteIcon,
                    height: 25.adaptSize,
                    width: 25.adaptSize),
                SizedBox(height: 3.v),
                Text(favoriteCount,
                    style: CustomTextStyles.bodySmallInterGray80001
                        .copyWith(color: appTheme.gray80001))
              ]))
        ]);
  }

  showBottomSheet(context){
  return showModalBottomSheet(
      context: context,
       isScrollControlled: true, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context){
        return Container(
          margin: EdgeInsets.all(5),
          child: GiftOneTabContainerScreen());
      });
}

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
