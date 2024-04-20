import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/concern_page_screen/concern_page_screen.dart';
import '../presentation/home_page_container_screen/home_page_container_screen.dart';
import '../presentation/normal_screen/normal_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/therapy_page_screen/therapy_page_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String homePage = '/home_page';

  static const String normalScreen = '/normal_screen';

  static const String therapyPageScreen = '/therapy_page_screen';

  static const String concernPageScreen = '/concern_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    homePageContainerScreen: (context) => HomePageContainerScreen(),
    normalScreen: (context) => NormalScreen(),
    therapyPageScreen: (context) => TherapyPageScreen(),
    concernPageScreen: (context) => ConcernPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
