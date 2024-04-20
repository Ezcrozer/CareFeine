import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/concernpage_item_widget.dart';

class ConcernPageScreen extends StatelessWidget {
  const ConcernPageScreen({Key? key})
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
                  "Congenital disease ",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 19.v),
              _buildConcernPage(context)
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
        text: "Concern",
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildConcernPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 70.v,
          crossAxisCount: 4,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ConcernpageItemWidget();
        },
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
