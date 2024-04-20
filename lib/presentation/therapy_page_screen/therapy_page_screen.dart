import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/grid1_item_widget.dart';
import 'widgets/gridrectangle_item_widget.dart';
import 'widgets/therapypage_item_widget.dart';

class TherapyPageScreen extends StatelessWidget {
  const TherapyPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 27.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "select your age",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 19.v),
              _buildTherapyPage(context),
              SizedBox(height: 51.v),
              _buildCongenital(context),
              SizedBox(height: 51.v),
              _buildCoffeeBeans(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 41.h,
          top: 31.v,
          bottom: 26.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Therapy",
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTherapyPage(BuildContext context) {
    return SizedBox(
      height: 69.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 1.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return TherapypageItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCongenital(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Congenital disease ",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 22.v),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 70.v,
              crossAxisCount: 4,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 20.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return GridrectangleItemWidget();
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCoffeeBeans(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Coffee beans type",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 22.v),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 70.v,
              crossAxisCount: 4,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 20.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Grid1ItemWidget();
            },
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
