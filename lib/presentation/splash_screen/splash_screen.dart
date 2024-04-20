import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray800,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCarefeineLogo,
                height: 180.v,
                width: 182.h,
              ),
              SizedBox(height: 14.v),
              Text(
                "CareFeine",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 28.v),
              CustomElevatedButton(
                width: 83.h,
                text: "start",
                buttonTextStyle: CustomTextStyles.titleSmallKarlaWhiteA700,
                onPressed: () {
                  onTapStart(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the homePageContainerScreen when the action is triggered.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageContainerScreen);
  }
}
