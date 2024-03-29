import '../withdrawal_screen/widgets/userprofile10_item_widget.dart';
import '../withdrawal_screen/widgets/userprofile11_item_widget.dart';
import 'controller/withdrawal_controller.dart';
import 'models/userprofile10_item_model.dart';
import 'models/userprofile11_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {

  var controller = Get.put(WithdrawalController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 26.v),
                child: Column(children: [
                  _buildWithdraw(),
                  SizedBox(height: 16.v),
                  _buildUserProfile(),
                  SizedBox(height: 22.v),
                  _buildFrame(),
                  SizedBox(height: 11.v),
                  _buildUserProfile1()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 44.h,
        leading:
        GestureDetector(
          onTap: (){
            onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios)),
        //  AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_withdrawal".tr));
  }

  /// Section Widget
  Widget _buildWithdraw() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 73.h, vertical: 17.v),
        decoration: AppDecoration.fillGreen70002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("lbl_your_earnings".tr,
                  style: CustomTextStyles.labelLargePoppinsGreen100),
              SizedBox(height: 6.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h, right: 20.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgPngegg51,
                                height: 21.v,
                                width: 27.h,
                                margin: EdgeInsets.only(top: 5.v, bottom: 8.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_652_000".tr,
                                          style: CustomTextStyles
                                              .titleLargePoppinsffffffff),
                                      TextSpan(
                                          text: "lbl_1_0002".tr,
                                          style: CustomTextStyles
                                              .bodySmallPoppinsffd1fbe2)
                                    ]),
                                    textAlign: TextAlign.left))
                          ]))),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                  height: 36.v,
                  text: "lbl_withdraw".tr,
                  buttonStyle: CustomButtonStyles.fillLightGreenATL18,
                  buttonTextStyle: CustomTextStyles.labelLargeGray80001)
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
        height: 83.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 11.h);
            },
            itemCount: controller
                .withdrawalModelObj.value.userprofile10ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile10ItemModel model = controller
                  .withdrawalModelObj.value.userprofile10ItemList.value[index];
              return Userprofile10ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_history".tr,
              style: CustomTextStyles.titleSmallPoppinsGray80001Medium),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.labelLargePoppinsAmber600))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile1() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 14.v);
                },
                itemCount: controller.withdrawalModelObj.value
                    .userprofile11ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile11ItemModel model = controller.withdrawalModelObj
                      .value.userprofile11ItemList.value[index];
                  return Userprofile11ItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
