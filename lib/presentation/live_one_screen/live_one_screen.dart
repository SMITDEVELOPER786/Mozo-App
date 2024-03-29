import 'controller/live_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class LiveOneScreen extends GetWidget<LiveOneController> {
  const LiveOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          // width: SizeUtils.width,
          // height: SizeUtils.height,
          padding: EdgeInsets.only(top: 26.v),
          decoration: BoxDecoration(
            color: appTheme.black900.withOpacity(0.2),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLiveOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            // width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 10.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBerriesToSurpassP(),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 11.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPngwing1,
                                      height: 122.adaptSize,
                                      width: 122.adaptSize,
                                    ),
                                    // Spacer(),
                                    
                                  ]))
                        ]))
              ],
            ),
          
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Container(
        height: 41.v,
        width: 142.h,
        margin: EdgeInsets.only(left: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        decoration: AppDecoration.fillBlackB.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            right: 4.h,
            bottom: 3.v,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 38.v,
                width: 34.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse50,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(4.h, 11.v, 5.h, 3.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPngwing10,
                      height: 38.v,
                      width: 34.h,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 10.v,
                  bottom: 2.v,
                ),
                child: Column(
                  children: [
                    AppbarSubtitleFour(
                      text: "lbl_cody_fisher".tr,
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Row(
                        children: [
                          AppbarImage(
                            imagePath: ImageConstant.imgCherries,
                          ),
                          AppbarSubtitleSix(
                            text: "lbl_20_000".tr,
                            margin: EdgeInsets.only(
                              left: 3.h,
                              top: 1.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 8.v,
                  bottom: 1.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.gradientGreenToPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder15,
                ),
                child: AppbarImage(
                  imagePath: ImageConstant.imgPlus,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Container(
          height: 35.v,
          width: 50.h,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 10.v,
            right: 10.h,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgKlipartz16,
                height: 35.v,
                width: 50.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 15.adaptSize,
                width: 15.adaptSize,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.fromLTRB(17.h, 14.v, 17.h, 5.v),
              ),
            ],
          ),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse51,
          margin: EdgeInsets.fromLTRB(2.h, 14.v, 10.h, 4.v),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse52,
          margin: EdgeInsets.fromLTRB(3.h, 14.v, 10.h, 4.v),
        ),
        AppbarSubtitleFive(
          text: "lbl_200".tr,
          margin: EdgeInsets.fromLTRB(3.h, 14.v, 10.h, 4.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlus,
          margin: EdgeInsets.fromLTRB(16.h, 15.v, 30.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBerriesToSurpassP() {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
            height: 30.v,
            width: 167.h,
            text: "msg_12_berries_to_surpass".tr,
            margin: EdgeInsets.only(bottom: 8.v),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgConfettiWhiteA700,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillLightGreenA,
            buttonTextStyle: CustomTextStyles.labelMediumGray80001_1,
          ),
          CustomElevatedButton(
            height: 30.v,
            width: 56.h,
            text: "lbl_760".tr,
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 8.v,
            ),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgClose16x16,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillBlackB,
            buttonTextStyle: CustomTextStyles.labelLargeSemiBold,
          ),
          Spacer(),
          Container(
            width: 58.h,
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillBlackB.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClose16x16,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_33".tr,
                            style: CustomTextStyles.labelMediumffffb61d,
                          ),
                          TextSpan(
                            text: "lbl_100".tr,
                            style: CustomTextStyles.bodySmallInterffffffff10,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      width: 30.h,
                      margin: EdgeInsets.symmetric(horizontal: 2.h),
                      decoration: AppDecoration.fillGray70006.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder1,
                      ),
                      child: Container(
                        height: 2.v,
                        width: 12.h,
                        decoration: BoxDecoration(
                          color: appTheme.yellow800,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 23.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 2.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillDeepPurpleA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              dynamicText,
              style: CustomTextStyles.labelMediumSemiBold11.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 4.v,
              bottom: 5.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_nobilson".tr,
                    style: CustomTextStyles.labelMediumffffffff,
                  ),
                  TextSpan(
                    text: "lbl_hello_beautiful".tr,
                    style: CustomTextStyles.bodySmallInterffffffff,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
