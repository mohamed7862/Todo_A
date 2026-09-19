import 'package:first_app_in_iti/Core/nanigation/route.dart';
import 'package:first_app_in_iti/Core/style/assetsmanger.dart';
import 'package:first_app_in_iti/Core/style/colormangment.dart';
import 'package:first_app_in_iti/Core/style/textstylemanger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.NeutralBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // اللوجو
            Image.asset(AssetsManager.logoApp, width: 120, height: 120),
            const SizedBox(height: 24),

            // اسم التطبيق
            Text(
              'ًWorkSpace',
              style: TextStyleManager.textStyleNeutralGhostB26(context),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  void routingtoOnboarding() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        context.pushReplacement(route.kOnboardingView);
      }
    });
  }

  @override
  void initState() {
    routingtoOnboarding();
    super.initState();
  }
}
