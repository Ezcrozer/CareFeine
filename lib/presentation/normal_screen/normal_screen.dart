import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/grid_item_widget.dart';

class NormalScreen extends StatelessWidget {
  const NormalScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 15.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "menu",
                  style: CustomTextStyles.titleLargeMedium,
                ),
              ),
              SizedBox(height: 16.v),
              _buildGrid(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 85.v,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 42.h,
          top: 43.v,
          bottom: 26.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Normal",
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 88.v,
          crossAxisCount: 2,
          mainAxisSpacing: 26.h,
          crossAxisSpacing: 26.h,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 16,
        itemBuilder: (context, index) {
          return GridItemWidget();
        },
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
