

import 'controller/verification_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_pin_code_text_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class VerificationThreeScreen extends GetWidget<VerificationThreeController> {
  const VerificationThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 56.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1025,
                height: 5.v,
                width: 352.h,
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_verify_your_account".tr,
                  style: CustomTextStyles.titleLargeGray90008,
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_enter_the_code_sent".tr,
                  style: CustomTextStyles.labelLargeGray40005,
                ),
              ),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 22.h,
                ),
                child: CustomPinCodeTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter all fields.';
                    }
                    return null;
                  },
                  context: Get.context!,
                  // controller: controller.otpController.value,
                  onChanged: (value) {
                    controller.enteredPin = value;
                  },
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "lbl_00_52".tr,
                style: CustomTextStyles.bodyMediumRedA100,
              ),
              SizedBox(height: 25.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_didn_t_receive_a2".tr,
                      style: CustomTextStyles.bodyMediumff486484,
                    ),
                    TextSpan(
                      text: "lbl_resend_code".tr,
                      style: CustomTextStyles.labelLargeffff897e.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 91.v),
              _buildFrame(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 163, 226, 15)
                      .withOpacity(0.8), // Start with yellow at the top
                  Color.fromARGB(
                      255, 43, 112, 45), // Transition to green at the bottom
                ],
                stops: [0.2, 1.0],
              ),
              corners: Corners(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: CustomOutlinedButton(
                onPressed: () {
                  Get.back();
                },
                text: "lbl_previous".tr,
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            onPressed: () async {
              if (controller.enteredPin.length != 4) {
                Get.snackbar("Error", "Please fill the OTP Fields");
              } else {
                String enteredPin = controller.enteredPin;
                await controller.verifyOTP(enteredPin);
              }

              // Get.lazyPut(()=>VerificationFourScreen());
              // Get.toNamed(AppRoutes.verificationFourScreen);
            },
            height: 48.v,
            text: "lbl_proceed".tr,
            margin: EdgeInsets.only(left: 4.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenToPrimaryTL24Decoration,
          ),
        ),
      ],
    );
  }
}
