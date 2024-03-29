import 'controller/admin_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';


class AdminOneScreen extends StatefulWidget {
  const AdminOneScreen({Key? key}) : super(key: key);

  @override
  State<AdminOneScreen> createState() => _AdminOneScreenState();
}

class _AdminOneScreenState extends State<AdminOneScreen> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: _buildPageOfEight()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowdownGray80003,
            margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_users".tr));
  }

  /// Section Widget
  Widget _buildPageOfEight() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 5.v),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 583.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 183.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 166.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup62),
                                  fit: BoxFit.cover)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 11.v, bottom: 36.v),
                                    child: Text("lbl_page_1_of_8".tr,
                                        style: CustomTextStyles
                                            .titleSmallPoppinsGray60002)),
                                Spacer(),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 28.v),
                                    child: CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        decoration:
                                            IconButtonStyleHelper.fillLime1,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconFillCaretSmallLeft))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 4.h, bottom: 28.v),
                                    child: CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        decoration:
                                            IconButtonStyleHelper.fillGreen,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconFillCaretSmallRight)))
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                          height: 332.v,
                          width: 373.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(top: 44.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsCheckBox,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(top: 85.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsCheckBox,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(top: 125.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsChec,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(bottom: 124.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsChec,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(bottom: 83.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsChec,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(bottom: 42.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsChec,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 40.v,
                                    width: 44.h,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 11.v, 12.h, 10.v),
                                    decoration: AppDecoration.outlineLime5002,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomIconsChec,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: 44.h,
                                    margin:
                                        EdgeInsets.only(left: 40.h, top: 44.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 18.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_1".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: 44.h,
                                    margin:
                                        EdgeInsets.only(left: 40.h, top: 85.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_2".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: 44.h,
                                    margin:
                                        EdgeInsets.only(left: 40.h, top: 125.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_3".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 44.h,
                                    margin: EdgeInsets.only(
                                        left: 40.h, bottom: 124.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_4".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 44.h,
                                    margin: EdgeInsets.only(
                                        left: 40.h, bottom: 83.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_5".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 44.h,
                                    margin: EdgeInsets.only(
                                        left: 40.h, bottom: 42.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_6".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 44.h,
                                    margin: EdgeInsets.only(
                                        left: 40.h, bottom: 2.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_7".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 57.h,
                                    margin:
                                        EdgeInsets.only(left: 80.h, top: 44.v),
                                    padding: EdgeInsets.fromLTRB(
                                        18.h, 10.v, 18.h, 9.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse480,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        radius: BorderRadius.circular(10.h),
                                        alignment: Alignment.center))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 57.h,
                                    margin:
                                        EdgeInsets.only(left: 80.h, top: 85.v),
                                    padding: EdgeInsets.fromLTRB(
                                        18.h, 8.v, 18.h, 7.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse480,
                                        height: 19.v,
                                        width: 20.h,
                                        radius: BorderRadius.circular(10.h),
                                        alignment: Alignment.topCenter))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 58.h,
                                    margin:
                                        EdgeInsets.only(left: 80.h, top: 126.v),
                                    padding: EdgeInsets.fromLTRB(
                                        18.h, 8.v, 18.h, 7.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse48022x20,
                                        height: 22.v,
                                        width: 20.h,
                                        radius: BorderRadius.circular(11.h),
                                        alignment: Alignment.topCenter))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        left: 80.h, bottom: 123.v),
                                    padding: EdgeInsets.fromLTRB(
                                        18.h, 10.v, 18.h, 9.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse480,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        radius: BorderRadius.circular(10.h),
                                        alignment: Alignment.centerRight))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        left: 80.h, bottom: 82.v),
                                    padding: EdgeInsets.fromLTRB(
                                        18.h, 8.v, 18.h, 7.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse480,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        radius: BorderRadius.circular(10.h),
                                        alignment: Alignment.bottomCenter))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        left: 80.h, bottom: 41.v),
                                    padding: EdgeInsets.fromLTRB(
                                        18.h, 8.v, 18.h, 7.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse480,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        radius: BorderRadius.circular(10.h),
                                        alignment: Alignment.bottomCenter))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 41.v,
                                    width: 57.h,
                                    margin: EdgeInsets.only(left: 80.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 18.h, vertical: 8.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse480,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        radius: BorderRadius.circular(10.h),
                                        alignment: Alignment.bottomCenter))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: 57.h,
                                    margin:
                                        EdgeInsets.only(left: 134.h, top: 44.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_gladys".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: 57.h,
                                    margin:
                                        EdgeInsets.only(left: 134.h, top: 85.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_esther".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 126.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                              height: 41.v,
                                              width: 57.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height: 41.v,
                                                            width: 57.h,
                                                            decoration: BoxDecoration(
                                                                border: Border(
                                                                    bottom: BorderSide(
                                                                        color: appTheme
                                                                            .lightGreen5002,
                                                                        width: 1
                                                                            .h))))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 4.h),
                                                            child: Text(
                                                                "lbl_mitchell"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)))
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 140.h,
                                                  top: 14.v,
                                                  bottom: 14.v),
                                              child: Text("lbl_04_15_am".tr,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 123.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                              height: 41.v,
                                              width: 57.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height: 41.v,
                                                            width: 57.h,
                                                            decoration: BoxDecoration(
                                                                border: Border(
                                                                    bottom: BorderSide(
                                                                        color: appTheme
                                                                            .lightGreen5002,
                                                                        width: 1
                                                                            .h))))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(
                                                            "lbl_cameron".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall))
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 140.h,
                                                  top: 14.v,
                                                  bottom: 14.v),
                                              child: Text("lbl_07_38_am".tr,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        left: 134.h, bottom: 82.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_philip".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        left: 134.h, bottom: 41.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_arlene".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 41.v,
                                          width: 57.h,
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: 41.v,
                                                        width: 57.h,
                                                        decoration: BoxDecoration(
                                                            border: Border(
                                                                bottom: BorderSide(
                                                                    color: appTheme
                                                                        .lightGreen5002,
                                                                    width: 1
                                                                        .h))))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 5.h),
                                                        child: Text(
                                                            "lbl_victoria".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)))
                                              ])),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 140.h,
                                              top: 14.v,
                                              bottom: 14.v),
                                          child: Text("lbl_07_40_am".tr,
                                              textAlign: TextAlign.center,
                                              style: theme.textTheme.bodySmall))
                                    ])),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        top: 44.v, right: 123.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_8861".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        top: 85.v, right: 123.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_8013".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        top: 126.v, right: 123.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_5560".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        right: 123.h, bottom: 123.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_9151".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        right: 123.h, bottom: 82.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_6690".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(
                                        right: 123.h, bottom: 41.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_1374".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 57.h,
                                    margin: EdgeInsets.only(right: 123.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_5626".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 74.h,
                                    margin:
                                        EdgeInsets.only(top: 44.v, right: 49.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_45904".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 74.h,
                                    margin:
                                        EdgeInsets.only(top: 85.v, right: 49.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_39235".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 249.h, top: 126.v, right: 49.h),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 14.v, 12.h, 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_18599".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 249.h,
                                        right: 49.h,
                                        bottom: 123.v),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 14.v, 12.h, 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_16627".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 74.h,
                                    margin: EdgeInsets.only(
                                        right: 49.h, bottom: 82.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_20079".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 74.h,
                                    margin: EdgeInsets.only(
                                        right: 49.h, bottom: 41.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 14.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_28200".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 249.h, right: 49.h),
                                    padding: EdgeInsets.fromLTRB(
                                        12.h, 14.v, 12.h, 13.v),
                                    decoration: AppDecoration.outlineLightGreen,
                                    child: Text("lbl_9631".tr,
                                        style: theme.textTheme.bodySmall))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 319.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 53.h,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_12_01_pm".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 53.h,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_11_23_pm".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 41.v,
                                                  width: 57.h,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: appTheme
                                                                  .lightGreen5002,
                                                              width: 1.h))))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 41.v,
                                                  width: 57.h,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: appTheme
                                                                  .lightGreen5002,
                                                              width: 1.h))))),
                                          Container(
                                              width: 53.h,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_07_59_pm".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 53.h,
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_11_49_pm".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 41.v,
                                                  width: 57.h,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: appTheme
                                                                  .lightGreen5002,
                                                              width: 1.h)))))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 375.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              width: 58.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 14.v),
                                              decoration: AppDecoration
                                                  .outlineLightgreen5002,
                                              child: Text("lbl_status".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumRobotoBlack900)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Container(
                                              width: 57.h,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: AppDecoration
                                                  .outlineLightGreen,
                                              child: Text("lbl_online".tr,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                    height: 44.v,
                                    width: 379.h,
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(12.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineLime,
                                              alignment: Alignment.centerLeft,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgAtomIconsChec)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  width: 44.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 40.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 7.h,
                                                      vertical: 15.v),
                                                  decoration: AppDecoration
                                                      .outlineLightgreen5002,
                                                  child: Text("lbl_serial".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoBlack900))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  width: 58.h,
                                                  margin: EdgeInsets.only(
                                                      left: 80.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12.h,
                                                      vertical: 15.v),
                                                  decoration: AppDecoration
                                                      .outlineLightgreen5002,
                                                  child: Text("lbl_profile".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoBlack900))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  width: 61.h,
                                                  margin: EdgeInsets.only(
                                                      left: 134.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12.h,
                                                      vertical: 15.v),
                                                  decoration: AppDecoration
                                                      .outlineLightgreen5002,
                                                  child: Text("lbl_names".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoBlack900))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  width: 62.h,
                                                  margin: EdgeInsets.only(
                                                      right: 126.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 12.h,
                                                      vertical: 15.v),
                                                  decoration: AppDecoration
                                                      .outlineLightgreen5002,
                                                  child: Text("lbl_user_id".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoBlack900))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  width: 74.h,
                                                  margin: EdgeInsets.only(
                                                      right: 56.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 7.h,
                                                      vertical: 15.v),
                                                  decoration: AppDecoration
                                                      .outlineLightgreen5002,
                                                  child: Text(
                                                      "lbl_total_coins".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoBlack900))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  width: 60.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 17.h,
                                                      vertical: 15.v),
                                                  decoration: AppDecoration
                                                      .outlineLightgreen5002,
                                                  child: Text("lbl_time".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoBlack900)))
                                        ])))
                          ])))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
