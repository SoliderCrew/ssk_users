import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ssk/modules/error_route/error_route_screen.dart';
import 'package:ssk/modules/splash/splash_binding.dart';
import 'package:ssk/modules/splash/view/splash_screen.dart';
import 'package:ssk/routes/app_routes.dart';
import 'package:ssk/routes/routes.dart';
import 'package:ssk/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getAppTheme(
          context,
        ),
        home: const SplashScreen(),
        initialRoute: Routes.splashScreen,
        initialBinding: SplashBinding(),
        getPages: AppRoutes.pages,
        unknownRoute: GetPage(
          name: Routes.errorScreen,
          page: () => const ErrorRouteScreen(),
        ),
      ),
    );
  }
}
