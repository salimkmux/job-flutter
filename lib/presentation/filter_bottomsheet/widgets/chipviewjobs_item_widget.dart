import '../models/chipviewjobs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:salimkm_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewjobsItemWidget extends StatelessWidget {
  ChipviewjobsItemWidget(
    this.chipviewjobsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChipviewjobsItemModel chipviewjobsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        top: 14,
        right: 16,
        bottom: 14,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewjobsItemModelObj.jobsoneTxt,
        style: TextStyle(
          color: chipviewjobsItemModelObj.isSelected
              ? appTheme.gray5001
              : theme.colorScheme.primary,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgCheckmarkGray5001,
        height: getSize(18),
        width: getSize(18),
        margin: getMargin(
          right: 4,
        ),
      ),
      selected: chipviewjobsItemModelObj.isSelected,
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      selectedColor: appTheme.deepOrangeA200,
      shape: chipviewjobsItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(22),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray50,
                width: getHorizontalSize(1),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(22),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
