import 'package:elixir/features/authentication/screens/onboaring/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/theme/theme.dart';

class Gautam extends StatelessWidget {
  const Gautam({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}