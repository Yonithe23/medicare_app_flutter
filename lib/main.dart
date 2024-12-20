import 'package:flutter/material.dart';
import 'package:medicare_app_flutter/common/color_extension.dart';
import 'package:medicare_app_flutter/common/global.dart';
import 'package:medicare_app_flutter/view/login/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Globs.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: TColor.bg,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: TColor.primary,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
