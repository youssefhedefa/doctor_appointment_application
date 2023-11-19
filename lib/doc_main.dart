import 'package:doctor_appointment_application/core/routing/app_router.dart';
import 'package:doctor_appointment_application/core/routing/routes.dart';
import 'package:doctor_appointment_application/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsProvider.mainBlue,
        ),
        initialRoute: RoutesName.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),

    );
  }
}
