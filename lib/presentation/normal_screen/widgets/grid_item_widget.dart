import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img11,
      height: 87.adaptSize,
      width: 87.adaptSize,
      radius: BorderRadius.circular(
        20.h,
      ),
    );
  }
}
