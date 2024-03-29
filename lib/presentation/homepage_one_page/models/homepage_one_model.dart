import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [homepage_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageOneModel {
  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        fireworkImage: ImageConstant.imgFireworkExplosion.obs,
        toppersPartyImage1: ImageConstant.imgStar1.obs,
        toppersPartyImage2: ImageConstant.imgStar2.obs,
        toppersPartyImage3: ImageConstant.imgStar177x77.obs,
        toppersPartyImage4: ImageConstant.imgStar269x69.obs,
        toppersPartyImage5: ImageConstant.imgRadioStudio.obs,
        toppersPartyImage6: ImageConstant.imgStar162x62.obs,
        toppersPartyImage7: ImageConstant.imgStar256x56.obs,
        monthlyToppers: "Monthly toppers party".obs,
        januaryImage: ImageConstant.imgEventAccepted.obs,
        januaryText: "January 15 & 16".obs,
        toppersPartyImage8: ImageConstant.imgPartyBalloons.obs),
    ViewhierarchyItemModel(
        fireworkImage: ImageConstant.imgTudorRose.obs,
        toppersPartyImage1: ImageConstant.imgStar11.obs,
        toppersPartyImage2: ImageConstant.imgStar2.obs,
        toppersPartyImage3: ImageConstant.imgStar12.obs,
        toppersPartyImage4: ImageConstant.imgStar269x69.obs,
        toppersPartyImage5: ImageConstant.imgRadioStudio.obs,
        toppersPartyImage6: ImageConstant.imgStar13.obs,
        toppersPartyImage7: ImageConstant.imgStar256x56.obs,
        monthlyToppers: "Monthly toppers party".obs,
        januaryImage: ImageConstant.imgEventAccepted.obs,
        januaryText: "January 15 & 16".obs,
        toppersPartyImage8: ImageConstant.imgPartyBalloons60x61.obs),
    ViewhierarchyItemModel(
        fireworkImage: ImageConstant.imgFireworkExplosion.obs,
        toppersPartyImage1: ImageConstant.imgStar14.obs,
        toppersPartyImage2: ImageConstant.imgStar2.obs,
        toppersPartyImage3: ImageConstant.imgStar15.obs,
        toppersPartyImage4: ImageConstant.imgStar269x69.obs,
        toppersPartyImage5: ImageConstant.imgRadioStudio.obs,
        toppersPartyImage6: ImageConstant.imgStar16.obs,
        toppersPartyImage7: ImageConstant.imgStar256x56.obs,
        monthlyToppers: "Monthly toppers party".obs,
        januaryImage: ImageConstant.imgEventAccepted.obs,
        januaryText: "January 15 & 16".obs,
        toppersPartyImage8: ImageConstant.imgPartyBalloons.obs)
  ]);
}
