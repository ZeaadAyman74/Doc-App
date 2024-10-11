import 'package:advanced_app/core/di/di.dart';
import 'package:advanced_app/core/routing/router.dart';
import 'package:advanced_app/core/routing/routes.dart';
import 'package:advanced_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Docdoc',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(background: Colors.white,primary: AppColors.mainBlue),
          useMaterial3: true,
        ),
        initialRoute:Routes.onBoarding,
        onGenerateRoute: sl<AppRouter>().generateRoute,
        navigatorKey: sl<AppRouter>().navigatorKey,
      ),
    );
  }
}

/**
primarySwatch is a predefined range of shades based on one primary color.
colorScheme is a more structured, modern, and flexible way of defining colors for an app, including primary and secondary, background, etc.
primaryColor is a direct, specific color for the app's primary UI components but lacks the flexibility of primarySwatch and colorScheme.
**/
