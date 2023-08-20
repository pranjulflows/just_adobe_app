import 'package:get/get.dart';
import 'package:just_adobe_app/core/bindings/app_bindings.dart';
import 'package:just_adobe_app/core/utils/constants.dart';
import 'package:just_adobe_app/features/auth/login_screen.dart';
import 'package:just_adobe_app/features/category_screen.dart';
import 'package:just_adobe_app/features/home_screen.dart';
import 'package:just_adobe_app/features/splash_page.dart';

class Routes {
  static const String INITIAL = "/";
  static const String ONBOARDINGSCREEN = "/OnBoardingScreen";
  static const String createOrganisationRoleScreen =
      "/CreateOrganisationRoleScreen";
  static const String createOrganisationCompanyScreen =
      "/CreateOrganisationCompanyScreen";
  static const String companyDetailMannualScreen =
      "/CompanyDetailMannualScreen";
  static const String dashBoardScreen = "/DashBoardScreen";
  static const String homeScreen = "/HomeScreen";

  static const String loginScreen = "/LoginScreen";
  static const String signupScreen = "/SignupScreen";
}

List<GetPage> AppPages() => [
      GetPage(
        name: Routes.INITIAL,
        page: () => SplashScreen(),
        fullscreenDialog: true,
        transition: Constants.transition,
        transitionDuration:
            const Duration(milliseconds: Constants.transitionDuration),
      ),
      GetPage(
        name: Routes.dashBoardScreen,
        page: () => CatalogueScreen(),
        fullscreenDialog: true,
        transition: Constants.transition,
        transitionDuration:
            const Duration(milliseconds: Constants.transitionDuration),
      ),
      GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        fullscreenDialog: true,
        binding: AppBinding(),
        transition: Constants.transition,
        transitionDuration:
            const Duration(milliseconds: Constants.transitionDuration),
      ),
      GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        fullscreenDialog: true,
        binding: AppBinding(),
        transition: Constants.transition,
        transitionDuration:
            const Duration(milliseconds: Constants.transitionDuration),
      ),
    ];
