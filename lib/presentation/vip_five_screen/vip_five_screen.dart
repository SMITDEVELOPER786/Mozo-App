import 'controller/vip_five_controller.dart';import 'package:flutter/material.dart';import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';class VipFiveScreen extends GetWidget<VipFiveController> {const VipFiveScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGroupAmberA400, height: 851.v, width: 393.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: SingleChildScrollView(child: _buildBuySection()))])))); } 
/// Section Widget
Widget _buildBuySection() { return SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: SizedBox(height: SizeUtils.height, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgVector8, height: 412.v, width: 393.h, alignment: Alignment.bottomCenter), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 852.v, width: 393.h, alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(left: 33.h, right: 36.h, bottom: 15.v), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(children: [CustomImageView(imagePath: ImageConstant.imgGroup47x47, height: 47.adaptSize, width: 47.adaptSize), SizedBox(height: 5.v), Text("lbl_vip_badge".tr, style: CustomTextStyles.bodySmallInterBluegray5002), SizedBox(height: 13.v), CustomImageView(imagePath: ImageConstant.imgClose42x34, height: 42.v, width: 34.h), SizedBox(height: 4.v), Text("lbl_car".tr, style: CustomTextStyles.bodySmallInterBluegray5002), SizedBox(height: 15.v), CustomImageView(imagePath: ImageConstant.imgGroup42x34, height: 42.v, width: 34.h), SizedBox(height: 5.v), Text("lbl_privilege".tr, style: CustomTextStyles.bodySmallInterBluegray5002), SizedBox(height: 13.v), CustomImageView(imagePath: ImageConstant.imgTelevisionBlueGray1000144x36, height: 44.v, width: 36.h), SizedBox(height: 3.v), Text("lbl_hide".tr, style: CustomTextStyles.bodySmallArialBluegray5002)]), Spacer(flex: 45), Column(crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgClosePink600, height: 47.v, width: 39.h, margin: EdgeInsets.only(right: 26.h)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 27.h), child: Text("lbl_frame".tr, style: CustomTextStyles.bodySmallInterBluegray5002)), SizedBox(height: 15.v), CustomImageView(imagePath: ImageConstant.imgGroup1, height: 42.v, width: 34.h, margin: EdgeInsets.only(right: 28.h)), SizedBox(height: 5.v), Text("msg_colorful_message".tr, style: CustomTextStyles.bodySmallInterBluegray5002), SizedBox(height: 14.v), CustomImageView(imagePath: ImageConstant.imgGroup2, height: 42.v, width: 34.h, margin: EdgeInsets.only(right: 28.h)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 10.h), child: Text("lbl_prevent_kick".tr, style: CustomTextStyles.bodySmallInterBluegray5002)), SizedBox(height: 14.v), CustomImageView(imagePath: ImageConstant.imgGroup, height: 42.v, width: 34.h, margin: EdgeInsets.only(right: 28.h)), SizedBox(height: 3.v), Padding(padding: EdgeInsets.only(right: 22.h), child: Text("lbl_id_unben".tr, style: CustomTextStyles.bodySmallArialBluegray5002))]), Spacer(flex: 54), Padding(padding: EdgeInsets.only(bottom: 2.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgGroup47x39, height: 47.v, width: 39.h), SizedBox(height: 4.v), Text("msg_entrance_effects".tr, style: CustomTextStyles.bodySmallInterBluegray5002), SizedBox(height: 15.v), CustomImageView(imagePath: ImageConstant.imgGroup3, height: 42.v, width: 34.h), SizedBox(height: 5.v), Text("lbl_flyingy_message".tr, style: CustomTextStyles.bodySmallInterBluegray5002), SizedBox(height: 13.v), CustomImageView(imagePath: ImageConstant.imgTelevisionBlueGray1000141x33, height: 41.v, width: 33.h), SizedBox(height: 3.v), Text("lbl_gift".tr, style: CustomTextStyles.bodySmallArialBluegray5002), SizedBox(height: 16.v), CustomImageView(imagePath: ImageConstant.imgTelevisionBlueGray10001, height: 42.v, width: 34.h), SizedBox(height: 4.v), Text("lbl_help_desk".tr, style: CustomTextStyles.bodySmallArialBluegray5002)]))]), SizedBox(height: 18.v), CustomElevatedButton(height: 38.v, width: 214.h, text: "lbl_buy".tr, buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientGreenToLimeADecoration, buttonTextStyle: theme.textTheme.bodyLarge!)]))), Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 53.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgCheckmarkWhiteA70024x24, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgArrowLeft();}), Padding(padding: EdgeInsets.only(left: 142.h, top: 4.v, bottom: 3.v), child: Text("lbl_vip".tr, style: CustomTextStyles.labelLarge13))]), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("lbl_vip_1".tr, style: theme.textTheme.labelLarge)), Spacer(flex: 25), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("lbl_vip_22".tr, style: theme.textTheme.labelLarge)), Spacer(flex: 24), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: _buildVipCounterSection(vipCounterText: "lbl_vip_3".tr, vIP: "lbl_vip2".tr)), Spacer(flex: 24), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: _buildVipCounterSection(vipCounterText: "lbl_vip_4".tr, vIP: "lbl_vip2".tr)), CustomElevatedButton(height: 22.v, width: 58.h, text: "lbl_vip_5".tr, margin: EdgeInsets.only(left: 18.h), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientGreenToPrimaryTL10Decoration, buttonTextStyle: theme.textTheme.labelLarge!), Padding(padding: EdgeInsets.only(left: 18.h, top: 3.v, bottom: 3.v), child: _buildVipCounterSection(vipCounterText: "lbl_vip_6".tr, vIP: "lbl_vip2".tr)), Spacer(flex: 24), Padding(padding: EdgeInsets.symmetric(vertical: 4.v), child: _buildVipCounterSection(vipCounterText: "lbl_vip_6".tr, vIP: "lbl_vip2".tr))])), SizedBox(height: 36.v), CustomImageView(imagePath: ImageConstant.imgLayer1, height: 159.v, width: 122.h, margin: EdgeInsets.only(left: 116.h)), SizedBox(height: 62.v), Padding(padding: EdgeInsets.only(left: 120.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgRectangle26x26, height: 26.adaptSize, width: 26.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h, top: 3.v, bottom: 2.v), child: Text("lbl_7500000".tr, style: CustomTextStyles.bodyLarge18))]))])))])))); } 
/// Common widget
Widget _buildVipCounterSection({required String vipCounterText, required String vIP, }) { return SizedBox(height: 15.v, width: 31.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: Text(vipCounterText, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.whiteA700))), Align(alignment: Alignment.centerLeft, child: Text(vIP, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.whiteA700)))])); } 

/// Navigates to the previous screen.
onTapImgArrowLeft() { Get.back(); } 
 }
