import 'controller/messages_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

class MessagesOneScreen extends StatefulWidget {
  const MessagesOneScreen({Key? key}) : super(key: key);

  @override
  _MessagesOneScreenState createState() => _MessagesOneScreenState();
}

class _MessagesOneScreenState extends State<MessagesOneScreen> {
  final MessagesOneController controller = Get.put(MessagesOneController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                height: 700.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 43.v),
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup62,
                      height: 400.v,
                      width: 393.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 56.v)),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_today_10_28_am".tr,
                                        style: CustomTextStyles
                                            .labelLargeGray40004)),
                                SizedBox(height: 20.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 95.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlay36x36,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                          margin: EdgeInsets.only(top: 70.v)),
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            right: 65.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    16.h,
                                                                vertical: 11.v),
                                                        decoration: AppDecoration
                                                            .fillGreen70002
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                  height: 2.v),
                                                              Text(
                                                                  "msg_hey_how_are_you"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumWhiteA700)
                                                            ])),
                                                    SizedBox(height: 8.v),
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    16.h,
                                                                vertical: 10.v),
                                                        decoration: AppDecoration
                                                            .fillGreen70002
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .customBorderTL10),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                  height: 1.v),
                                                              Container(
                                                                  width: 177.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right: 4
                                                                              .h),
                                                                  child: Text(
                                                                      "msg_how_may_i_i_be_of"
                                                                          .tr,
                                                                      maxLines:
                                                                          2,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: CustomTextStyles
                                                                          .bodyMediumWhiteA700
                                                                          .copyWith(
                                                                              height: 1.26)))
                                                            ]))
                                                  ])))
                                    ])),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 58.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                  child: Column(children: [
                                                CustomElevatedButton(
                                                    height: 41.v,
                                                    width: 112.h,
                                                    text: "lbl_hello_nathan".tr,
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillLime,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .bodyMediumOnPrimary,
                                                    alignment:
                                                        Alignment.centerRight),
                                                SizedBox(height: 8.v),
                                                Container(
                                                    width: 251.h,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16.h,
                                                            vertical: 10.v),
                                                    decoration: AppDecoration
                                                        .fillLime10006
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL10),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(height: 2.v),
                                                          Container(
                                                              width: 207.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right: 11
                                                                          .h),
                                                              child: Text(
                                                                  "msg_i_ve_been_having"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumOnPrimary
                                                                      .copyWith(
                                                                          height:
                                                                              1.38)))
                                                        ]))
                                              ])),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPlay36x36,
                                                  height: 36.adaptSize,
                                                  width: 36.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h, top: 73.v))
                                            ]))),
                                SizedBox(height: 16.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 102.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlay36x36,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                          margin: EdgeInsets.only(top: 5.v)),
                                      Expanded(
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 8.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 11.v),
                                              decoration: AppDecoration
                                                  .fillGreen70002
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 2.v),
                                                    Text(
                                                        "msg_oh_could_you_tell"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumWhiteA700)
                                                  ])))
                                    ])),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 69.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16.h,
                                                              vertical: 10.v),
                                                      decoration: AppDecoration
                                                          .fillLime10006
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                                height: 2.v),
                                                            Container(
                                                                width: 199.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 8
                                                                            .h),
                                                                child: Text(
                                                                    "msg_could_please_send"
                                                                        .tr,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumOnPrimary
                                                                        .copyWith(
                                                                            height:
                                                                                1.38)))
                                                          ]))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPlay36x36,
                                                  height: 36.adaptSize,
                                                  width: 36.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h, top: 24.v))
                                            ]))),
                                SizedBox(height: 40.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 83.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlay36x36,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                          margin: EdgeInsets.only(top: 119.v)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle40023,
                                          height: 155.v,
                                          width: 226.h,
                                          radius: BorderRadius.circular(10.h),
                                          margin: EdgeInsets.only(left: 8.h))
                                    ]))
                              ])))
                ])),
            bottomNavigationBar: _buildFrame()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 44.h,
        leading: GestureDetector(
          
            onTap: () {
              onTapArrowLeft();
            },
          child: Icon(Icons.arrow_back_ios,size: 20,)),
         
        centerTitle: true,
        title: Text( "lbl_empire_baby2".tr,));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 16.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomTextFormField(
                  controller: controller.messageController,
                  hintText: "lbl_message".tr,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(9.h, 14.v, 10.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFeatherIcon,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 52.v),
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 18.v, 12.h, 18.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 52.v),
                  contentPadding: EdgeInsets.symmetric(vertical: 15.v),
                  borderDecoration:
                      TextFormFieldStyleHelper.fillLightGreenTL10)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: CustomIconButton(
                  height: 52.v,
                  width: 54.h,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.gradientGreenToPrimaryTL10,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFeatherIconWhiteA700)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
