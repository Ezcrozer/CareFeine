import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray600,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder27,
      ),
      child: Container(
        height: 143.v,
        width: 354.h,
        decoration: AppDecoration.fillGray600.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder27,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCoffeeBeans,
              height: 143.v,
              width: 182.h,
              radius: BorderRadius.circular(
                27.h,
              ),
              alignment: Alignment.centerLeft,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(26.h, 41.v, 16.h, 41.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Normal",
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "add an ingredient to make your coffee",
                          style: theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 21.v,
                        bottom: 20.v,
                      ),
                      child: Text(
                        "get start",
                        style: CustomTextStyles.titleSmallWhiteA700,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrow,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        top: 16.v,
                        bottom: 18.v,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
