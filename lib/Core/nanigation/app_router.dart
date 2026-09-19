import 'package:first_app_in_iti/Core/forms/login.dart';
import 'package:first_app_in_iti/Core/forms/signup.dart';
import 'package:first_app_in_iti/Core/nanigation/route.dart';
import 'package:first_app_in_iti/Featuers/home/presention/veiw/homeveiw.dart';
import 'package:first_app_in_iti/Featuers/home/presention/manger/home_cubit.dart';
import 'package:first_app_in_iti/Featuers/onbording/onbordingview.dart';
import 'package:first_app_in_iti/Featuers/splash/splashveiw.dart';
import 'package:first_app_in_iti/Featuers/welcome/welcome.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(routes: routes);
  static List<GoRoute> routes = [
    GoRoute(
      path: route.kSplashView,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: route.kOnboardingView,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: route.kWelcome,
      builder: (context, state) => const WelcomeView(),
    ),
    GoRoute(path: route.kLogin, builder: (context, state) => const LoginView()),
    GoRoute(path: route.kRegister, builder: (context, state) => const Signup()),
    GoRoute(
      path: route.kHome,
      builder: (context, state) =>
          BlocProvider(create: (_) => HomeCubit(), child: const HomeView()),
    ),
  ];
}
