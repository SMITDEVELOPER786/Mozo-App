import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/models/homepage_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomepageTabContainerPage.
///
/// This class manages the state of the HomepageTabContainerPage, including the
/// current homepageTabContainerModelObj
class HomepageTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {HomepageTabContainerController(this.homepageTabContainerModelObj);

Rx<HomepageTabContainerModel> homepageTabContainerModelObj;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

 }
