import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class GridrectangleItemWidget extends StatelessWidget {
  const GridrectangleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.adaptSize,
      width: 69.adaptSize,
      decoration: BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
    );
  }
}
