import 'package:digital_store/core/utils/app_colors.dart';
import 'package:digital_store/core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor: AppColors.darkScaffoldColor),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.darkScaffoldColor
        ),
        scaffoldBackgroundColor:AppColors.darkScaffoldColor ,
        textTheme:GoogleFonts.marheyTextTheme(ThemeData.dark().textTheme)
      ),
      debugShowCheckedModeBanner: false,
      title: 'Digital Store',
      routerConfig: AppRouter.router,
    );
  }
}

