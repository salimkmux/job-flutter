import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:salimkm_s_application1/core/app_export.dart';
import 'package:salimkm_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(64),
      width: getHorizontalSize(295),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLogoDeepOrange700,
            height: getSize(32),
            width: getSize(32),
            alignment: Alignment.topLeft,
            margin: getMargin(
              left: 8,
              top: 8,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                CustomIconButton(
                  height: getSize(48),
                  width: getSize(48),
                  padding: getPadding(
                    all: 8,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgUser,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        profileItemModelObj.internshipuiuxTxt,
                        style: CustomTextStyles.titleSmallPrimarySemiBold,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "lbl_shopee_sg".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 3,
                                top: 1,
                              ),
                              child: Text(
                                "lbl".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 4,
                              ),
                              child: Text(
                                profileItemModelObj.zipcodeTxt,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
