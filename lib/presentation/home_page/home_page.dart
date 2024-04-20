import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray50,
          child: Column(
            children: [
              _buildCarefeineColumn(context),
              SizedBox(height: 37.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Coffee type",
                    style: CustomTextStyles.titleLargeBold,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Choose your favorite coffee type from our selection.",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Divider(
                indent: 20.h,
                endIndent: 18.h,
              ),
              SizedBox(height: 24.v),
              _buildUserProfileList(context),
              SizedBox(height: 52.v),
              CustomImageView(
                imagePath: ImageConstant.imgInbox,
                height: 80.adaptSize,
                width: 80.adaptSize,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarefeineColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          Text(
            "CareFeine",
            style: CustomTextStyles.headlineSmallBold,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 17.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return UserprofilelistItemWidget();
        },
      ),
    );
  }
}
