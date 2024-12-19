// Import necessary Flutter packages and app modules.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicare_app_flutter/common/color_extension.dart';
import 'package:medicare_app_flutter/view/login/on_boardning_screen.dart';

// A stateful widget for the Splash Screen.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Hide system UI.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    startTimer();
  }

  // Simulate loading with a delay, then navigate to the next screen.
  void startTimer() async {
    await Future.delayed(Duration(seconds: 3));
    navigateToNextScreen();
  }

  // Navigate to the onboarding screen.
  void navigateToNextScreen() {
    context.push(const OnBoardningScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Container(
        alignment: Alignment.center,
        // Display the splash logo.
        child: Image.asset(
          "assets/img/splash_logo.png",
          width: context.width * 0.35,
        ),
      ),
    );
  }
}
