import 'controller/leaderboard_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class LeaderboardOneScreen extends GetWidget<LeaderboardTwoController> {
  const LeaderboardOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
            // height: 820.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      decoration: AppDecoration.gradientGreenToPrimary,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 20,),
                        _buildAppBar(),
                        SizedBox(height: 20,),
                        _buildFrame2(),
                        SizedBox(height: 22.v),
                        _buildFrame3(),
                        SizedBox(height: 4.v),
                        SizedBox(
                            height: 656.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 406.v,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              // gradient: LinearGradient(
                                              //     begin: Alignment(0.5, 0),
                                              //     end: Alignment(0.5, 1),
                                              //     colors: [
                                              //   // appTheme.cyan900.withOpacity(0),
                                              //   // appTheme.cyan900
                                              // ]
                                              // )
                                              ))),
                                  _buildFavorite()
                                ]))
                      ]))),
              _buildFour()
            ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 33.v,
        leadingWidth: 44.h,
        leading: 
        Icon(Icons.arrow_back_ios,color: Colors.white),
        // AppbarLeadingImage(
        //     imagePath: ImageConstant.imgCheckmarkWhiteA70024x24,
        //     margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 2.v),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_leaderboard".tr,style: TextStyle(color: Colors.white),),
        actions: [
          Container(
            child: Column(children: [
              Icon(Icons.calendar_month,color: Colors.white,size: 10,),
            
              // SizedBox(height: 1.v),
              Text("lbl_last_month".tr,style: TextStyle(color: Colors.white),)
            ]),
          )
        ]);
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                //  height: 40.v,
              width: 100.h,
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 250, 239).withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)

              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("lbl_receiver".tr,style: TextStyle(color: Colors.white),)),
              ),
              ),
              //   CustomElevatedButton(
             
              // buttonStyle: CustomButtonStyles.fillGrayTL17,
              // buttonTextStyle: CustomTextStyles.bodyMediumBluegray5002),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_gifters".tr,
                  style: CustomTextStyles.bodyMediumBluegray5002)),
          // CustomElevatedButton(
          //     height: 34.v,
          //     width: 107.h,
          //     text: "lbl_gifters".tr,
          //     buttonStyle: CustomButtonStyles.fillGrayTL17,
          //     buttonTextStyle: CustomTextStyles.bodyMediumBluegray5002),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 6.v),
              child: Text("lbl_family".tr,
                  style: CustomTextStyles.bodyMediumBluegray5002))
        ]));
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 30.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  height: 24.v,
                  width: 68.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 24.v,
                        width: 68.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 14.h, bottom: 3.v),
                            child: Text("lbl_1_to_15".tr,
                                style: CustomTextStyles
                                    .bodySmallInterBluegray5002)))
                  ])),
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                  child: Text("lbl_16_to_30".tr,
                      style: CustomTextStyles.bodySmallInterBluegray5002)),
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                  child: Text("lbl_month".tr,
                      style: CustomTextStyles.bodySmallInterBluegray5002))
            ]));
  }

  /// Section Widget
  Widget _buildFavorite() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 269.v,
            width: 365.h,
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 239.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            height: 149.v,
                            width: 126.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildWidget(
                                      image1: ImageConstant.imgRectangle,
                                      image2:
                                          ImageConstant.imgRectangle101x101),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroupLightBlue800,
                                      height: 130.v,
                                      width: 99.h,
                                      alignment: Alignment.bottomCenter),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFavoriteCyanA20001,
                                      height: 57.v,
                                      width: 91.h,
                                      alignment: Alignment.topCenter),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse473,
                                      height: 46.adaptSize,
                                      width: 46.adaptSize,
                                      radius: BorderRadius.circular(23.h),
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 46.v))
                                ])),
                        SizedBox(height: 14.v),
                        Text("lbl_alex_media".tr,
                            style: CustomTextStyles.labelLargeBold_1),
                        SizedBox(height: 4.v),
                        _buildFrame(userBalance: "lbl_12000000".tr)
                      ]))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 101.h, right: 115.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            height: 177.v,
                            width: 149.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 149.adaptSize,
                                          width: 149.adaptSize,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle149x149,
                                                    height: 149.adaptSize,
                                                    width: 149.adaptSize,
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle119x119,
                                                    height: 119.adaptSize,
                                                    width: 119.adaptSize,
                                                    alignment: Alignment.center)
                                              ]))),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroupYellow50001,
                                      height: 68.v,
                                      width: 107.h,
                                      alignment: Alignment.topCenter),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 154.v,
                                          width: 117.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.h, vertical: 38.v),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant.imgGroup79),
                                                  fit: BoxFit.cover)),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse472,
                                              height: 57.adaptSize,
                                              width: 57.adaptSize,
                                              radius:
                                                  BorderRadius.circular(28.h),
                                              alignment: Alignment.topCenter)))
                                ])),
                        SizedBox(height: 5.v),
                        Text("lbl_sexy_mercy".tr,
                            style: CustomTextStyles.labelLargeBold_1),
                        SizedBox(height: 3.v),
                        _buildFrame(userBalance: "lbl_15000000".tr)
                      ]))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 239.h, bottom: 7.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            height: 149.v,
                            width: 126.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildWidget(
                                      image1: ImageConstant.imgRectangle126x126,
                                      image2: ImageConstant.imgRectangle2),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroupDeepPurple600,
                                      height: 130.v,
                                      width: 99.h,
                                      alignment: Alignment.bottomCenter),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSettingsYellow90002,
                                      height: 57.v,
                                      width: 91.h,
                                      alignment: Alignment.topCenter),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse474,
                                      height: 43.adaptSize,
                                      width: 43.adaptSize,
                                      radius: BorderRadius.circular(21.h),
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 50.v))
                                ])),
                        SizedBox(height: 14.v),
                        Text("lbl_savon_oliva".tr,
                            style: CustomTextStyles.labelLargeBold_1),
                        SizedBox(height: 4.v),
                        SizedBox(
                            height: 17.v,
                            width: 71.h,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgPngegg51,
                                  height: 17.v,
                                  width: 23.h,
                                  alignment: Alignment.centerLeft),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("lbl_10000000".tr,
                                          style: theme.textTheme.labelMedium)))
                            ]))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildFour() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
            decoration: AppDecoration.gradientLightGreenToLightGreen
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child: Text("lbl_4".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: _buildKlipartzFifteen()),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 11.v, bottom: 10.v),
                            child: Text("lbl_jenny_wilson".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child: _buildFrame1(userCount: "lbl_15000000".tr))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, bottom: 10.v),
                            child: Text("lbl_5".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: _buildEightyFour()),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 11.v, bottom: 10.v),
                            child: Text("lbl_devon_lane".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                left: 9.h, top: 11.v, bottom: 10.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child: _buildFrame1(userCount: "lbl_10000000".tr))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, bottom: 14.v),
                            child: Text("lbl_6".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        Container(
                            height: 42.v,
                            width: 55.h,
                            margin: EdgeInsets.only(left: 16.h),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildEightyFour(),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPngfind1,
                                      height: 37.v,
                                      width: 40.h,
                                      alignment: Alignment.bottomCenter)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 13.v, bottom: 12.v),
                            child: Text("lbl_robert_fox".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                left: 14.h, top: 13.v, bottom: 12.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 13.v, bottom: 12.v)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.v),
                            child: _buildFrame1(userCount: "lbl_10000000".tr))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 11.v),
                            child: Text("lbl_7".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: _buildEightyFour()),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 11.v, bottom: 11.v),
                            child: Text("msg_darlene_robertson".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child: _buildFrame1(userCount: "lbl_10000000".tr))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 9.v, bottom: 14.v),
                            child: Text("lbl_8".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose40x44,
                            height: 40.v,
                            width: 44.h,
                            margin: EdgeInsets.only(left: 16.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 12.v, bottom: 12.v),
                            child: Text("lbl_kristin_watson".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 11.v),
                            child: _buildFrame1(userCount: "lbl_10000000".tr))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, bottom: 10.v),
                            child: Text("lbl_9".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: _buildKlipartzFifteen()),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 11.v, bottom: 10.v),
                            child: Text("lbl_robert_fox".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                left: 14.h, top: 11.v, bottom: 10.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child: _buildFrame1(userCount: "lbl_10000000".tr))
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 14.v, bottom: 8.v),
                            child: Text("lbl_10".tr,
                                style: CustomTextStyles.labelLargeBold)),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: _buildEightyFour()),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, top: 11.v, bottom: 10.v),
                            child: Text("lbl_jerome_bell".tr,
                                style: CustomTextStyles.labelLargeSemiBold)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                left: 10.h, top: 11.v, bottom: 10.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgClose16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            child: _buildFrame1(userCount: "lbl_10000000".tr))
                      ]))
            ])));
  }

  /// Common widget
  Widget _buildFrame({required String userBalance}) {
    return SizedBox(
        height: 17.v,
        width: 70.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPngegg51,
              height: 17.v,
              width: 23.h,
              alignment: Alignment.centerLeft),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(userBalance,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: appTheme.whiteA700))))
        ]));
  }

  /// Common widget
  Widget _buildWidget({
    required String image1,
    required String image2,
  }) {
    return SizedBox(
        height: 126.adaptSize,
        width: 126.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: image1,
              height: 126.adaptSize,
              width: 126.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: image2,
              height: 101.adaptSize,
              width: 101.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildFrame1({required String userCount}) {
    return SizedBox(
        height: 17.v,
        width: 74.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPngegg51,
              height: 17.v,
              width: 24.h,
              alignment: Alignment.centerLeft),
          Align(
              alignment: Alignment.centerRight,
              child: Text(userCount,
                  style: theme.textTheme.labelMedium!
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Common widget
  Widget _buildEightyFour() {
    return SizedBox(
        height: 38.v,
        width: 55.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgKlipartz16,
              height: 38.v,
              width: 55.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse46819x19,
              height: 19.adaptSize,
              width: 19.adaptSize,
              radius: BorderRadius.circular(9.h),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 4.v))
        ]));
  }

  /// Common widget
  Widget _buildKlipartzFifteen() {
    return SizedBox(
        height: 38.v,
        width: 55.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgKlipartz16,
              height: 38.v,
              width: 55.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse4682,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        radius: BorderRadius.circular(9.h),
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse46919x19,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        radius: BorderRadius.circular(9.h),
                        alignment: Alignment.center)
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
