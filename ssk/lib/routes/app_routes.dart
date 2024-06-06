import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ssk/modules/home/view/home_screen.dart';
import 'package:ssk/modules/login/view/widgets/login_screen.dart';
import 'package:ssk/modules/splash/view/splash_screen.dart';
import 'package:ssk/routes/routes.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}
